TARGETS = home work

ifeq ($(VERBOSE),1)
	Q =
else
	Q = @
endif

MKDIR = $(Q)mkdir -p
STOW  = $(Q)stow
SSTOW = $(Q)sudo stow

INSTALL_TARGETS   = $(TARGETS)
UNINSTALL_TARGETS = $(TARGETS:=-uninstall)

.PHONY: prepare
prepare:
	$(MKDIR) $(HOME)/.config
	$(MKDIR) $(HOME)/.local
	$(MKDIR) $(HOME)/.local/share
	$(MKDIR) $(HOME)/.gnupg

.PHONY: $(INSTALL_TARGETS)
$(INSTALL_TARGETS): prepare
	$(STOW) -t $(HOME) -d $@ HOME
	$(SSTOW) -t /etc/X11/xorg.conf.d -d $@ xorg.conf.d

.PHONY: $(UNINSTALL_TARGETS)
$(UNINSTALL_TARGETS):
	$(STOW) --delete -t $(HOME) -d $(@:-uninstall=) HOME
	$(SSTOW) --delete -t /etc/X11/xorg.conf.d -d $(@:-uninstall=) xorg.conf.d
