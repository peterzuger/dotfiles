BKUPDIR ?= $(shell date "+%Y-%m-%d_%H:%M:%S")

ifeq ($(VERBOSE),1)
	Q =
else
	Q = @
endif

MKDIR = $(Q)mkdir
MV    = $(Q)mv
CP    = $(Q)cp -i

backup:
	$(MKDIR) $(BKUPDIR)
	$(MV) /etc/X11/xorg.conf.d/00-keyboard.conf $(BKUPDIR)/00-keyboard.conf
	$(MV) /etc/X11/xorg.conf.d/20-intel.conf    $(BKUPDIR)/20-intel.conf
	$(MV) ~/.zshrc                              $(BKUPDIR)/zshrc
	$(MV) ~/.gitconfig                          $(BKUPDIR)/gitconfig
	$(MV) ~/.Xdefaults                          $(BKUPDIR)/Xdefaults
	$(MV) ~/.config/i3/config                   $(BKUPDIR)/config
	$(MV) ~/.config/i3/i3status.conf            $(BKUPDIR)/i3status.conf
	$(MV) ~/.config/i3/compton.conf             $(BKUPDIR)/compton.conf

restore:
	$(CP) $(BKUPDIR)/00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
	$(CP) $(BKUPDIR)/20-intel.conf    /etc/X11/xorg.conf.d/20-intel.conf
	$(CP) $(BKUPDIR)/zshrc            ~/.zshrc
	$(CP) $(BKUPDIR)/gitconfig        ~/.gitconfig
	$(CP) $(BKUPDIR)/Xdefaults        ~/.Xdefaults
	$(CP) $(BKUPDIR)/config           ~/.config/i3/config
	$(CP) $(BKUPDIR)/i3status.conf    ~/.config/i3/i3status.conf
	$(CP) $(BKUPDIR)/compton.conf     ~/.config/i3/compton.conf

install:
	git clone --recursive https://github.com/gko/ssh-connect  ~/.ssh-connect
	git clone https://github.com/nojhan/liquidprompt.git      ~/.liquidprompt
	git clone https://gitlab.com/peterzuger/emacsd.git ~/.emacs.d
	$(CP) 00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
	$(CP) 20-intel.conf    /etc/X11/xorg.conf.d/20-intel.conf
	$(CP) zshrc            ~/.zshrc
	$(CP) gitconfig        ~/.gitconfig
	$(CP) Xdefaults        ~/.Xdefaults
	$(CP) config           ~/.config/i3/config
	$(CP) i3status.conf    ~/.config/i3/i3status.conf
	$(CP) compton.conf     ~/.config/i3/compton.conf

update:
	$(CP) -uv 00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
	$(CP) -uv 20-intel.conf    /etc/X11/xorg.conf.d/20-intel.conf
	$(CP) -uv zshrc            ~/.zshrc
	$(CP) -uv gitconfig        ~/.gitconfig
	$(CP) -uv Xdefaults        ~/.Xdefaults
	$(CP) -uv config           ~/.config/i3/config
	$(CP) -uv i3status.conf    ~/.config/i3/i3status.conf
	$(CP) -uv compton.conf     ~/.config/i3/compton.conf
