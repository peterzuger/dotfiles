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

#	git clone --recursive https://github.com/gko/ssh-connect  $(INSTDIR)/.ssh-connect
#	git clone https://github.com/nojhan/liquidprompt.git      $(INSTDIR)/.liquidprompt
#	git clone https://gitlab.com/peterzuger/emacsd.git        $(INSTDIR)/.emacs.d
