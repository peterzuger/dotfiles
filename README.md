<p align="center">
  <a href="" rel="noopener">
 <img height=200px src="doc/dotfiles.png" alt="Arch Linux"></a>
</p>

<h3 align="center">dotfiles</h3>

<div align="center">

  [![Status](https://img.shields.io/badge/status-active-success.svg)]()
  [![GitHub Issues](https://img.shields.io/github/issues/peterzuger/dotfiles)](https://github.com/peterzuger/dotfiles/issues)
  [![GitHub Pull Requests](https://img.shields.io/github/issues-pr/peterzuger/dotfiles.svg)](https://github.com/peterzuger/dotfiles/pulls)
  [![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> My personal dotfiles.
    <br>
</p>

## 📝 Table of Contents
- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Built Using](#built_using)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)


## 🧐 About <a name = "about"></a>
This Repository contains the configuration of all of my computers,
this allows me to quickly and painlessly setup a new machine in under 30 minutes.

For each of my machines there is a make target.

At the moment that is ```home``` and ```work```, there is also a ```common``` target,
that installs all configurations that are common across all my machines.

For headless machines, like servers or raspberrypi's there is also the `headless` target.
The minimal usage of the headless target requires `git`,`stow` and `zsh`, `zsh` must be enabled with `chsh`.

## 🏁 Getting Started <a name = "getting_started"></a>
These instructions will get you a copy of my dotfiles up and running on your local machine.

### CentOS
On CentOS `gnu stow` is not in the default repository's, to install it add the `epel-release` repo.

```
sudo yum install epel-release
sudo yum install stow
```

### Prerequisites
Following Prerequisites must be installed from here: [Arch Packages](https://www.archlinux.org/packages/)

| Prerequisites                                                         | Description                                                                    | [Arch Packages](https://www.archlinux.org/packages/)                                                                                                                                   |
|-----------------------------------------------------------------------|--------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [acpi](https://sourceforge.net/projects/acpiclient/files/acpiclient/) | Client for battery, power, and thermal readings                                | [acpi](https://www.archlinux.org/packages/community/x86_64/acpi/)                                                                                                                      |
| [alsa](https://www.alsa-project.org/wiki/Main_Page)                   | An alternative implementation of Linux sound support                           | [alsa-utils](https://www.archlinux.org/packages/extra/x86_64/alsa-utils/)                                                                                                              |
| [base-devel](https://www.archlinux.org/groups/x86_64/base-devel/)     | Developer utilities                                                            | [base-devel](https://www.archlinux.org/groups/x86_64/base-devel/)                                                                                                                      |
| [clang](https://clang.llvm.org/)                                      | C language family frontend for LLVM                                            | [clang](https://www.archlinux.org/packages/staging/x86_64/clang/)                                                                                                                      |
| [cmake](https://cmake.org/)                                           | A cross-platform open-source make system                                       | [cmake](https://www.archlinux.org/packages/extra/x86_64/cmake/)                                                                                                                        |
| [picom](https://github.com/yshui/picom)                               | X compositor that may fix tearing issues                                       | [picom](https://www.archlinux.org/packages/community/x86_64/picom/)                                                                                                                    |
| [dhcpd](https://roy.marples.name/projects/dhcpcd/)                    | RFC2131 compliant DHCP client daemon                                           | [dhcpcd](https://www.archlinux.org/packages/core/x86_64/dhcpcd/)                                                                                                                       |
| [dunst](https://dunst-project.org/)                                   | Customizable and lightweight notification-daemon                               | [dunst](https://www.archlinux.org/packages/community/x86_64/dunst/)                                                                                                                    |
| [emacs](https://www.gnu.org/software/emacs/)                          | The extensible, customizable, self-documenting real-time display editor        | [emacs](https://www.archlinux.org/packages/extra/x86_64/emacs/)                                                                                                                        |
| [feh](https://feh.finalrewind.org/)                                   | Fast and light imlib2-based image viewer                                       | [feh](https://www.archlinux.org/packages/extra/x86_64/feh/)                                                                                                                            |
| [git](https://git-scm.com/)                                           | the fast distributed version control system                                    | [git](https://www.archlinux.org/packages/extra/x86_64/git/)                                                                                                                            |
| [i3-gaps](https://github.com/Airblader/i3)                            | A fork of i3wm tiling window manager with more features, including gaps        | [i3-gaps](https://www.archlinux.org/packages/community/x86_64/i3-gaps/)                                                                                                                |
| [i3lock](https://github.com/i3/i3lock)                                | improved screen locker                                                         | [i3lock-color](https://www.archlinux.org/packages/community/x86_64/i3lock-color/)                                                                                                      |
| [i3status](https://github.com/i3/i3status)                            | Generates status bar to use with i3bar, dzen2 or xmobar                        | [i3status](https://www.archlinux.org/packages/community/x86_64/i3status/)                                                                                                              |
| [inetutils](http://www.gnu.org/software/inetutils/)                   | A collection of common network programs                                        | [inetutils](https://www.archlinux.org/packages/core/x86_64/inetutils/)                                                                                                                 |
| [maim](https://github.com/naelstrof/maim)                             | Utility to take a screenshot using imlib2                                      | [maim](https://www.archlinux.org/packages/community/x86_64/maim/)                                                                                                                      |
| [nano](https://www.nano-editor.org/)                                  | Pico editor clone with enhancements                                            | [nano](https://www.archlinux.org/packages/core/x86_64/nano/)                                                                                                                           |
| [networkmanager](https://wiki.gnome.org/Projects/NetworkManager)      | Network connection manager and user applications                               | [networkmanager](https://www.archlinux.org/packages/extra/x86_64/networkmanager/)                                                                                                      |
| [noto](https://www.google.com/get/noto/)                              | Google Noto TTF fonts                                                          | [noto-fonts](https://www.archlinux.org/packages/extra/any/noto-fonts/)                                                                                                                 |
| [noto-cjk](https://www.google.com/get/noto/)                          | Google Noto CJK fonts                                                          | [noto-fonts-cjk](https://www.archlinux.org/packages/extra/any/noto-fonts-cjk/)                                                                                                         |
| [noto-emoji](https://www.google.com/get/noto/)                        | Google Noto emoji fonts                                                        | [noto-fonts-emoji](https://www.archlinux.org/packages/extra/any/noto-fonts-emoji/)                                                                                                     |
| [offlineimap](http://www.offlineimap.org/)                            | Synchronizes emails between two repositories                                   | [offlineimap](https://www.archlinux.org/packages/community/any/offlineimap/)                                                                                                           |
| [openssh](https://www.openssh.com/portable.html)                      | Premier connectivity tool for remote login with the SSH protocol               | [openssh](https://www.archlinux.org/packages/core/x86_64/openssh/)                                                                                                                     |
| [rofi](https://github.com/davatorium/rofi)                            | A window switcher, application launcher and dmenu replacement                  | [rofi](https://www.archlinux.org/packages/community/x86_64/rofi/)                                                                                                                      |
| [stow](https://www.gnu.org/software/stow/)                            | Manage installation of multiple softwares in the same directory tree           | [stow](https://www.archlinux.org/packages/community/any/stow/)                                                                                                                         |
| [TeXLive](http://tug.org/texlive/)                                    | TeX Live core distribution                                                     | [texlive-most](https://www.archlinux.org/groups/x86_64/texlive-most/), [texlive-lang](https://www.archlinux.org/groups/x86_64/texlive-lang/)                                           |
| [dejavu](https://dejavu-fonts.github.io/)                             | Font family based on the Bitstream Vera Fonts with a wider range of characters | [ttf-dejavu](https://www.archlinux.org/packages/extra/any/ttf-dejavu/)                                                                                                                 |
| [udiskie](https://github.com/coldfix/udiskie)                         | Removable disk automounter using udisks                                        | [udiskie](https://www.archlinux.org/packages/community/any/udiskie/)                                                                                                                   |
| [urxvt](http://software.schmorp.de/pkg/rxvt-unicode.html)             | Unicode enabled rxvt-clone terminal emulator (urxvt)                           | [rxvt-unicode](https://www.archlinux.org/packages/community/x86_64/rxvt-unicode/), [rxvt-unicode-terminfo](https://www.archlinux.org/packages/community/x86_64/rxvt-unicode-terminfo/) |
| [xautolock](http://ibiblio.org/pub/Linux/X11/screensavers/)           | An automatic X screen-locker/screen-saver                                      | [xautolock](https://www.archlinux.org/packages/community/x86_64/xautolock/)                                                                                                            |
| [xbacklight](https://xorg.freedesktop.org/wiki/)                      | RandR-based backlight control application                                      | [xorg-xbacklight](https://www.archlinux.org/packages/extra/x86_64/xorg-xbacklight/)                                                                                                    |
| [xorg-server](https://www.x.org/wiki/)                                | Xorg X server                                                                  | [xorg-server](https://www.archlinux.org/packages/extra/x86_64/xorg-server/)                                                                                                            |
| [zsh](http://www.zsh.org/)                                            | A very advanced and programmable command interpreter (shell) for UNIX          | [zsh](https://www.archlinux.org/packages/extra/x86_64/zsh/)                                                                                                                            |


Following Prerequisites must be taken from the [AUR](https://aur.archlinux.org/packages/):

| Prerequisites                                       | Description                                      | [AUR](https://aur.archlinux.org/packages/) Packages              |
|-----------------------------------------------------|--------------------------------------------------|------------------------------------------------------------------|
| [mu](https://www.djcbsoftware.nl/code/mu/)          | Maildir indexer/searcher and Emacs client (mu4e) | [mu (AUR)](https://aur.archlinux.org/packages/mu/)               |
| [rofi-calc](https://github.com/svenstaro/rofi-calc) | Do live calculations in rofi!                    | [rofi-calc (AUR)](https://aur.archlinux.org/packages/rofi-calc/) |
| [symbola](http://users.teilar.gr/~g1951d/)                            | Font for unicode symbols (part of Unicode Fonts for Ancient Scripts).          | [ttf-symbola](https://aur.archlinux.org/packages/ttf-symbola/)                                                                                                                         |


Following Prerequisites might need to be changed depending on your hardware configuration:

| Prerequisites                                          | Description                                         | [Arch Packages](https://www.archlinux.org/packages/)                                  |
|--------------------------------------------------------|-----------------------------------------------------|---------------------------------------------------------------------------------------|
| [xf86-video-nouveau](https://nouveau.freedesktop.org/) | Open Source 3D acceleration driver for nVidia cards | [xf86-nouveau](https://www.archlinux.org/packages/extra/x86_64/xf86-video-nouveau/)   |
| [xf86-video-intel](https://01.org/linuxgraphics)       | X.org Intel i810/i830/i915/945G/G965+ video drivers | [xf86-video-intel](https://www.archlinux.org/packages/extra/x86_64/xf86-video-intel/) |


### Optional Prerequisites
Following packages might be installed for convenience:

| Prerequisites                                      | Description                                                                               | [Arch Packages](https://www.archlinux.org/packages/)                  |
|----------------------------------------------------|-------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [tar](https://www.gnu.org/software/tar/)           | create tar archives                                                                       | [tar](https://www.archlinux.org/packages/core/x86_64/tar/)            |
| [rar](https://www.rarlab.com/)                     | powerful archive manager                                                                  | [rar](https://aur.archlinux.org/packages/rar/)                        |
| [zip](http://infozip.sourceforge.net/Zip.html)     | compression and file packaging/archive utility                                            | [zip](https://www.archlinux.org/packages/extra/x86_64/zip/)           |
| [7z](http://p7zip.sourceforge.net/)                | p7zip is a port of 7za.exe for POSIX systems                                              | [p7zip](https://www.archlinux.org/packages/extra/x86_64/p7zip/)       |
| [lzop](https://www.lzop.org/)                      | lzop is a file compressor which is very similar to gzip.                                  | [lzop](https://www.archlinux.org/packages/extra/x86_64/lzop/)         |
| [gzip](https://www.gnu.org/software/gzip/)         | GNU Gzip is a popular data compression program                                            | [gzip](https://www.archlinux.org/packages/core/x86_64/gzip/)          |
| [bzip2](http://www.sourceware.org/bzip2/)          | bzip2 is a freely available, patent free (see below), high-quality data compressor.       | [bzip2](https://www.archlinux.org/packages/core/x86_64/bzip2/)        |
| [xz](https://tukaani.org/xz/)                      | XZ Utils is free general-purpose data compression software with a high compression ratio. | [xz](https://www.archlinux.org/packages/core/x86_64/xz/)              |
| [lzma](https://tukaani.org/xz/)                    | XZ Utils is free general-purpose data compression software with a high compression ratio. | [xz](https://www.archlinux.org/packages/core/x86_64/xz/)              |
| [unzip](http://infozip.sourceforge.net/UnZip.html) | UnZip is an extraction utility for archives compressed in .zip format                     | [unzip](https://www.archlinux.org/packages/extra/x86_64/unzip/)       |
| [ccache](https://ccache.dev/)                      | compiler cache                                                                            | [ccache](https://www.archlinux.org/packages/community/x86_64/ccache/) |
| [ctags](http://ctags.sourceforge.net/)             | Generates an index file of language objects found in source files                         | [ctags](https://www.archlinux.org/packages/extra/x86_64/ctags/)       |
| [global](https://www.gnu.org/software/global/)     | A source code tag system                                                                  | [global (AUR)](https://aur.archlinux.org/packages/global/)            |
| [ranger](http://ranger.github.io/)                 | Simple, vim-like file manager                                                             | [ranger](https://www.archlinux.org/packages/community/any/ranger/)    |
| [screen](https://www.gnu.org/software/screen/)     | Full-screen window manager that multiplexes a physical terminal                           | [screen](https://www.archlinux.org/packages/extra/x86_64/screen/)     |


### Automatic Prerequisites
Following things are installed automatically, via git submodules.

| Prerequisites                                          | Description                                                         |
|--------------------------------------------------------|---------------------------------------------------------------------|
| [liquidprompt](https://github.com/nojhan/liquidprompt) | A full-featured & carefully designed adaptive prompt for Bash & Zsh |
| [ssh-connect](https://github.com/gko/ssh-connect)      | simple ssh manager based on bash/zsh history                        |


### Installing
Before installing the dotfiles, a few things have to be setup manualy.
First, you should add yourself to the sudo group, this group may have to be created.

```
su
groupadd sudo
gpasswd -add sudo $USER
exit
```

For connecting with the internet I use dhcpcd and nmtui(networkmanager).
```
sudo systemctl enable dhcpcd.service
sudo systemctl enable NetworkManager.service
```

When using xdm, the xdm service has to be activated.
If you are already using a Display Manager, this should not be done.

```
sudo systemctl enable xdm.service
```

To install these dotfiles, just clone the repo, it does not need to
be in any special folder, just put it where you like.
The ```--recursive``` is **required**, otherwise the sub-repository's wont be downloaded.

```
git clone --recursive https://gitlab.com/peterzuger/dotfiles.git
cd dotfiles
```

now that you have all the sources, just ```make home```!

```
make home
```
make will deploy all dotfiles with [stow](https://www.gnu.org/software/stow/).
This tool just creates symbolic links for all files, it will not override
any files when doing so and just fails if it can't create a link.


### Uninstalling
To unstow the dotfiles.

```
make home-uninstall
```

This will not delete any files, it will just remove the symlinks.


## 🎈 Usage <a name="usage"></a>
![screenshot](doc/screenshot01.png)


### Global Keybindings
The i3 config configures the "Windows" key as the modifier key.

- mod + L             - lock the screen **now**
- mod + d             - rofi
- Print               - screenshot of all monitors
- mod + Print         - screenshot of the active window
- mod + Shift + Print - screenshot of an area (interactive)
- mod + RET           - open urxvt


## ⛏️ Built Using <a name = "built_using"></a>
- [stow](https://www.gnu.org/software/stow/) - symbolic link farmer


## ✍️ Authors <a name = "authors"></a>
- [@peterzuger](https://github.com/peterzuger)


## 🎉 Acknowledgements <a name = "acknowledgement"></a>
- [Arch Wiki Dotfiles](https://wiki.archlinux.org/index.php/Dotfiles)
- [GitHub does dotfiles](https://dotfiles.github.io/)
- [@kylelobo](https://github.com/kylelobo) - Documentation template
