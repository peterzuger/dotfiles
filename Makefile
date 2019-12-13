TARGETS = home work

ifeq ($(VERBOSE),1)
	Q =
else
	Q = @
endif

MKDIR = $(Q)mkdir -p
STOW  = $(Q)stow
SSTOW = $(Q)sudo stow
ECHO  = @echo

INSTALL_TARGETS   = $(TARGETS)
UNINSTALL_TARGETS = $(TARGETS:=-uninstall)

all: help

.PHONY: prepare
prepare:
	$(MKDIR) $(HOME)/.config
	$(MKDIR) $(HOME)/.config/git
	$(MKDIR) $(HOME)/.local
	$(MKDIR) $(HOME)/.local/bin
	$(MKDIR) $(HOME)/.local/share
	$(MKDIR) $(HOME)/.gnupg
	$(MKDIR) $(HOME)/.ssh
	$(MKDIR) $(HOME)/.zsh

.PHONY: headless
headless: prepare
	$(STOW) -t $(HOME) -d headless HOME

.PHONY: headless-uninstall
headless-uninstall:
	$(STOW) --delete -t $(HOME) -d headless HOME

.PHONY: common
common: headless
	$(STOW) -t $(HOME) -d common HOME
	$(SSTOW) -t /etc -d common etc

.PHONY: common-uninstall
common-uninstall: headless-uninstall
	$(STOW) --delete -t $(HOME) -d common HOME
	$(SSTOW) --delete -t /etc -d common etc

.PHONY: $(INSTALL_TARGETS)
$(INSTALL_TARGETS): prepare common
	$(STOW) -t $(HOME) -d $@ HOME
	$(SSTOW) -t /etc -d $@ etc

.PHONY: $(UNINSTALL_TARGETS)
$(UNINSTALL_TARGETS): common-uninstall
	$(STOW) --delete -t $(HOME) -d $(@:-uninstall=) HOME
	$(SSTOW) --delete -t /etc -d $(@:-uninstall=) etc

.PHONY: help
help:
	$(ECHO) 'use make "target"'
	$(ECHO) 'targets:'
	$(ECHO) '  headless(-uninstall)'
	$(ECHO) '  common(-uninstall)'
	$(ECHO) '  home(-uninstall)'
	$(ECHO) '  work(-uninstall)'
