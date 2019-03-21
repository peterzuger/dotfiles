BKUPDIR ?= $(shell date "+%Y-%m-%d_%H:%M:%S")
INSTDIR ?= $(HOME)

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
	$(MV) $(INSTDIR)/.zshrc                              $(BKUPDIR)/zshrc
	$(MV) $(INSTDIR)/.gitconfig                          $(BKUPDIR)/gitconfig
	$(MV) $(INSTDIR)/.Xdefaults                          $(BKUPDIR)/Xdefaults
	$(MV) $(INSTDIR)/.config/liquidpromptrc              $(BKUPDIR)/liquidpromtrc
	$(MV) $(INSTDIR)/.config/i3/config                   $(BKUPDIR)/i3config
	$(MV) $(INSTDIR)/.config/i3status/config             $(BKUPDIR)/i3statusconfig
	$(MV) $(INSTDIR)/.config/compton.conf                $(BKUPDIR)/compton.conf
	$(MV) $(INSTDIR)/.local/bin                          $(BKUPDIR)/

restore:
	$(CP) $(BKUPDIR)/00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
	$(CP) $(BKUPDIR)/20-intel.conf    /etc/X11/xorg.conf.d/20-intel.conf
	$(CP) $(BKUPDIR)/zshrc            $(INSTDIR)/.zshrc
	$(CP) $(BKUPDIR)/gitconfig        $(INSTDIR)/.gitconfig
	$(CP) $(BKUPDIR)/Xdefaults        $(INSTDIR)/.Xdefaults
	$(CP) $(BKUPDIR)/liquidpromptrc   $(INSTDIR)/.config/liquidpromptrc
	$(CP) $(BKUPDIR)/i3config         $(INSTDIR)/.config/i3/config
	$(CP) $(BKUPDIR)/i3statusconfig   $(INSTDIR)/.config/i3status/config
	$(CP) $(BKUPDIR)/compton.conf     $(INSTDIR)/.config/compton.conf
	$(CP) -r $(BKUPDIR)/bin           $(INSTDIR)/.local/

install:
	git clone --recursive https://github.com/gko/ssh-connect  $(INSTDIR)/.ssh-connect
	git clone https://github.com/nojhan/liquidprompt.git      $(INSTDIR)/.liquidprompt
	git clone https://gitlab.com/peterzuger/emacsd.git        $(INSTDIR)/.emacs.d
	$(CP) 00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
	$(CP) 20-intel.conf    /etc/X11/xorg.conf.d/20-intel.conf
	$(CP) zshrc            $(INSTDIR)/.zshrc
	$(CP) gitconfig        $(INSTDIR)/.gitconfig
	$(CP) Xdefaults        $(INSTDIR)/.Xdefaults
	$(CP) liquidpromptrc   $(INSTDIR)/.config/liquidpromptrc
	$(CP) i3config         $(INSTDIR)/.config/i3/config
	$(CP) i3statusconfig   $(INSTDIR)/.config/i3status/config
	$(CP) compton.conf     $(INSTDIR)/.config/compton.conf
	$(CP) -r bin           $(INSTDIR)/.local/

update:
	$(CP) -uv 00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
	$(CP) -uv 20-intel.conf    /etc/X11/xorg.conf.d/20-intel.conf
	$(CP) -uv zshrc            $(INSTDIR)/.zshrc
	$(CP) -uv gitconfig        $(INSTDIR)/.gitconfig
	$(CP) -uv Xdefaults        $(INSTDIR)/.Xdefaults
	$(CP) -uv liquidpromptrc   $(INSTDIR)/.config/liquidpromptrc
	$(CP) -uv i3config         $(INSTDIR)/.config/i3/config
	$(CP) -uv i3statusconfig   $(INSTDIR)/.config/i3status/config
	$(CP) -uv compton.conf     $(INSTDIR)/.config/compton.conf
	$(CP) -uvr bin             $(INSTDIR)/.local/
