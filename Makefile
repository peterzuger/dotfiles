TARGETS = home arch-virtualbox

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

.PHONY: headless
headless: prepare
	$(STOW) --target=$(INSTALL_HOME) --dir=headless HOME
	$(SSTOW) --target=$(INSTALL_ETC) --dir=headless etc

.PHONY: headless-uninstall
headless-uninstall:
	$(STOW) --delete --target=$(INSTALL_HOME) --dir=headless HOME
	$(SSTOW) --delete --target=$(INSTALL_ETC) --dir=headless etc

.PHONY: common
common: headless
	$(STOW) --target=$(INSTALL_HOME) --dir=common HOME
	$(SSTOW) --target=$(INSTALL_ETC) --dir=common etc

.PHONY: common-uninstall
common-uninstall: headless-uninstall
	$(STOW) --delete --target=$(INSTALL_HOME) --dir=common HOME
	$(SSTOW) --delete --target=$(INSTALL_ETC) --dir=common etc

.PHONY: $(INSTALL_TARGETS)
$(INSTALL_TARGETS): prepare common
	$(STOW) --target=$(INSTALL_HOME) --dir=$@ HOME
	$(SSTOW) --target=$(INSTALL_ETC) --dir=$@ etc

.PHONY: $(UNINSTALL_TARGETS)
$(UNINSTALL_TARGETS): common-uninstall
	$(STOW) --delete --target=$(INSTALL_HOME) --dir=$(@:-uninstall=) HOME
	$(SSTOW) --delete --target=$(INSTALL_ETC) --dir=$(@:-uninstall=) etc

.PHONY: help
help:
	$(ECHO) 'use make "target"'
	$(ECHO) 'targets:'
	$(ECHO) '  headless(-uninstall)'
	$(ECHO) '  common(-uninstall)'
	$(ECHO) '  home(-uninstall)'
