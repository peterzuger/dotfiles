INSTDIR ?= $(HOME)

ifeq ($(VERBOSE),1)
	Q =
else
	Q = @
endif

MKDIR = $(Q)mkdir
MV    = $(Q)mv
CP    = $(Q)cp -i
STOW  = $(Q)stow
SUDO  = $(Q)sudo
SSTOW = $(Q)sudo stow

install:
	$(STOW) -t $(HOME) HOME
	$(SSTOW) -t /etc/X11/xorg.conf.d xorg.conf.d

uninstall:
	$(STOW) --delete -t $(HOME) HOME
	$(SSTOW) --delete -t /etc/X11/xorg.conf.d xorg.conf.d
