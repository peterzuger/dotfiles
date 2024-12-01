TARGETS = home legion

ifeq ($(VERBOSE),1)
	Q =
else
	Q = @
endif

MKDIR = $(Q)mkdir --parents
STOW  = $(Q)stow
SSTOW = $(Q)sudo stow
ECHO  = @echo

INSTALL_TARGETS   = $(TARGETS)
UNINSTALL_TARGETS = $(TARGETS:=-uninstall)

INSTALL_HOME = $(DESTDIR)/$(HOME)
INSTALL_ETC  = $(DESTDIR)/etc

all: help

.PHONY: prepare
prepare:
	$(MKDIR) $(INSTALL_HOME)/.config/aspell
	$(MKDIR) $(INSTALL_HOME)/.config/distcc
	$(MKDIR) $(INSTALL_HOME)/.config/git
	$(MKDIR) $(INSTALL_HOME)/.config/gnupg
	$(MKDIR) $(INSTALL_HOME)/.config/offlineimap
	$(MKDIR) $(INSTALL_HOME)/.config/systemd/user
	$(MKDIR) $(INSTALL_HOME)/.config/zsh

	$(MKDIR) $(INSTALL_HOME)/.local/bin
	$(MKDIR) $(INSTALL_HOME)/.local/share

	$(MKDIR) $(INSTALL_HOME)/.ssh


headless: prepare
common: headless
common-uninstall: headless-uninstall
$(INSTALL_TARGETS): prepare common
$(UNINSTALL_TARGETS): common-uninstall

.PHONY: headless common $(INSTALL_TARGETS)
headless common $(INSTALL_TARGETS):
	$(STOW) --target=$(INSTALL_HOME) --dir=$@ HOME
	$(SSTOW) --target=$(INSTALL_ETC) --dir=$@ etc

.PHONY: headless-uninstall common-uninstall $(UNINSTALL_TARGETS)
headless-uninstall common-uninstall $(UNINSTALL_TARGETS):
	$(STOW) --delete --target=$(INSTALL_HOME) --dir=$(@:-uninstall=) HOME
	$(SSTOW) --delete --target=$(INSTALL_ETC) --dir=$(@:-uninstall=) etc

.PHONY: help
help:
	$(ECHO) 'use make "target"'
	$(ECHO) 'targets:'
	$(ECHO) '  headless(-uninstall)'
	$(ECHO) '  common(-uninstall)'
	$(ECHO) '  home(-uninstall)'
