ifeq ($(VERBOSE),1)
	Q =
else
	Q = @
endif

MKDIR = $(Q)mkdir -p
STOW  = $(Q)stow
SSTOW = $(Q)sudo stow

.PHONY: prepare
prepare:
	$(MKDIR) $(HOME)/.config
	$(MKDIR) $(HOME)/.local
	$(MKDIR) $(HOME)/.local/share
	$(MKDIR) $(HOME)/.gnupg

.PHONY: install
install: prepare
	$(STOW) -t $(HOME) HOME
	$(SSTOW) -t /etc/X11/xorg.conf.d xorg.conf.d

.PHONY: uninstall
uninstall:
	$(STOW) --delete -t $(HOME) HOME
	$(SSTOW) --delete -t /etc/X11/xorg.conf.d xorg.conf.d
