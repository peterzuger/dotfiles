# dotfiles
My dotfiles.

Random copy paste snippets from here: [Arch Wiki Dotfiles][1] and here: [GitHub does dotfiles][2] plus some of my creativity.

![screenshot][3]

# Requirements
This is a list of all things that have to be installed before installing these dotfiles.

| Dependency          | for                                                                     | [Arch Packages][5]                                |
|---------------------|-------------------------------------------------------------------------|---------------------------------------------------|
| [alsa][100]         | An alternative implementation of Linux sound support                    | [alsa-utils][200]                                 |
| [clang][101]        | C language family frontend for LLVM                                     | [clang][201]                                      |
| [cmake][102]        | A cross-platform open-source make system                                | [cmake][202]                                      |
| [compton][103]      | X compositor that may fix tearing issues                                | [compton][203]                                    |
| [ctags][104]        | Generates an index file of language objects found in source files       | [ctags][204]                                      |
| [dunst][105]        | Customizable and lightweight notification-daemon                        | [dunst][205]                                      |
| [emacs][106]        | The extensible, customizable, self-documenting real-time display editor | [emacs][206]                                      |
| [feh][107]          | Fast and light imlib2-based image viewer                                | [feh][207]                                        |
| [git][108]          | the fast distributed version control system                             | [git][208]                                        |
| [i3-gaps][109]      | A fork of i3wm tiling window manager with more features, including gaps | [i3-gaps][209]                                    |
| [i3status][110]     | Generates status bar to use with i3bar, dzen2 or xmobar                 | [i3status][210]                                   |
| [light-locker][111] | A simple session locker for LightDM                                     | [light-locker][211]                               |
| [maim][112]         | Utility to take a screenshot using imlib2                               | [maim][212]                                       |
| [nano][113]         | Pico editor clone with enhancements                                     | [nano][213]                                       |
| [offlineimap][114]  | Synchronizes emails between two repositories                            | [offlineimap][214]                                |
| [ranger][115]       | Simple, vim-like file manager                                           | [ranger][215]                                     |
| [rofi][116]         | A window switcher, application launcher and dmenu replacement           | [rofi][216]                                       |
| [screen][117]       | Full-screen window manager that multiplexes a physical terminal         | [screen][217]                                     |
| [stow][118]         | Manage installation of multiple softwares in the same directory tree    | [stow][218]                                       |
| [TeXLive][119]      | TeX Live core distribution                                              | [texlive-most][219], [texlive-lang][319]          |
| [udiskie][120]      | Removable disk automounter using udisks                                 | [udiskie][220]                                    |
| [urxvt][121]        | Unicode enabled rxvt-clone terminal emulator (urxvt)                    | [rxvt-unicode][221], [rxvt-unicode-terminfo][321] |
| [xautolock][122]    | An automatic X screen-locker/screen-saver                               | [xautolock][222]                                  |
| [xbacklight][123]   | RandR-based backlight control application                               | [xorg-xbacklight][223]                            |
| [zsh][124]          | A very advanced and programmable command interpreter (shell) for UNIX   | [zsh][224]                                        |

This is the list of dependencies from the [AUR][6]:

| Dependency       | for                                              | [AUR][6] Packages      |
|------------------|--------------------------------------------------|------------------------|
| [global][125]    | A source code tag system                         | [global (AUR)][225]    |
| [mu][126]        | Maildir indexer/searcher and Emacs client (mu4e) | [mu (AUR)][226]        |
| [rofi-calc][127] | Do live calculations in rofi!                    | [rofi-calc (AUR)][227] |

## Archiving and Compression
* [tar][10]
* [rar][11]
* [zip][12]
* [7z][13]
* [lzop][14]
* [gzip][15]
* [bzip2][16]
* [xz][17]
* [lzma][18]
* [unzip][19]

## Auto Install
All these will be automatically installed.

* [liquidprompt][30]
* [ssh-connect][31]

# Installation
These dotfiles are managed with [stow][118].

The ```--recursive``` is **required**, otherwise the sub-repository's wont be downloaded.

```
git clone --recursive https://gitlab.com/peterzuger/dotfiles.git
cd dotfiles
make
```

make will not override **any** files.

A warning will appear if any files are already present.

In that case backup these files and `make` again.

There will be multiple Targets in the future for different Hardware configurations.

# Uninstallation
To unstow the dotfiles.

```
make uninstall
```

This will not delete any files, it will just remove the symlinks.

[1]: https://wiki.archlinux.org/index.php/Dotfiles
[2]: https://dotfiles.github.io/
[3]: https://gitlab.com/peterzuger/dotfiles/raw/master/doc/screenshot01.png
[4]: https://github.com/Sarcasm/irony-mode
[5]: https://www.archlinux.org/packages/
[6]: https://aur.archlinux.org/packages/

[10]: https://www.gnu.org/software/tar/
[11]: https://www.rarlab.com/
[12]: http://infozip.sourceforge.net/Zip.html
[13]: http://p7zip.sourceforge.net/
[14]: https://www.lzop.org/
[15]: https://www.gnu.org/software/gzip/
[16]: http://www.sourceware.org/bzip2/
[17]: https://tukaani.org/xz/
[18]: https://tukaani.org/xz/
[19]: http://infozip.sourceforge.net/UnZip.html

[30]: https://github.com/nojhan/liquidprompt
[31]: https://github.com/gko/ssh-connect

[100]: https://www.alsa-project.org/wiki/Main_Page
[101]: https://clang.llvm.org/
[102]: https://cmake.org/
[103]: https://github.com/yshui/compton
[104]: http://ctags.sourceforge.net/
[105]: https://dunst-project.org/
[106]: https://www.gnu.org/software/emacs/
[107]: https://feh.finalrewind.org/
[108]: https://git-scm.com/
[109]: https://github.com/Airblader/i3
[110]: https://github.com/i3/i3status
[111]: https://github.com/the-cavalry/light-locker
[112]: https://github.com/naelstrof/maim
[113]: https://www.nano-editor.org/
[114]: http://www.offlineimap.org/
[115]: https://github.com/ranger/ranger
[116]: https://github.com/davatorium/rofi
[117]: https://www.gnu.org/software/screen/
[118]: https://www.gnu.org/software/stow/
[119]: http://tug.org/texlive/
[120]: https://github.com/coldfix/udiskie
[121]: http://software.schmorp.de/pkg/rxvt-unicode.html
[122]: http://ibiblio.org/pub/Linux/X11/screensavers/
[123]: https://xorg.freedesktop.org/wiki/
[124]: http://www.zsh.org/

[200]: https://www.archlinux.org/packages/extra/x86_64/alsa-utils/
[201]: https://www.archlinux.org/packages/staging/x86_64/clang/
[202]: https://www.archlinux.org/packages/extra/x86_64/cmake/
[203]: https://www.archlinux.org/packages/community/x86_64/compton/
[204]: https://www.archlinux.org/packages/extra/x86_64/ctags/
[205]: https://www.archlinux.org/packages/community/x86_64/dunst/
[206]: https://www.archlinux.org/packages/extra/x86_64/emacs/
[207]: https://www.archlinux.org/packages/extra/x86_64/feh/
[208]: https://www.archlinux.org/packages/extra/x86_64/git/
[209]: https://www.archlinux.org/packages/community/x86_64/i3-gaps/
[210]: https://www.archlinux.org/packages/community/x86_64/i3status/
[211]: https://www.archlinux.org/packages/community/x86_64/light-locker/
[212]: https://www.archlinux.org/packages/community/x86_64/maim/
[213]: https://www.archlinux.org/packages/core/x86_64/nano/
[214]: https://www.archlinux.org/packages/community/any/offlineimap/
[215]: https://www.archlinux.org/packages/community/any/ranger/
[216]: https://www.archlinux.org/packages/community/x86_64/rofi/
[217]: https://www.archlinux.org/packages/extra/x86_64/screen/
[218]: https://www.archlinux.org/packages/community/any/stow/
[219]: https://www.archlinux.org/groups/x86_64/texlive-most/
[220]: https://www.archlinux.org/packages/community/any/udiskie/
[221]: https://www.archlinux.org/packages/community/x86_64/rxvt-unicode/
[222]: https://www.archlinux.org/packages/community/x86_64/xautolock/
[223]: https://www.archlinux.org/packages/extra/x86_64/xorg-xbacklight/
[224]: https://www.archlinux.org/packages/extra/x86_64/zsh/

[319]: https://www.archlinux.org/groups/x86_64/texlive-lang/
[321]: https://www.archlinux.org/packages/community/x86_64/rxvt-unicode-terminfo/

[125]: https://www.gnu.org/software/global/
[126]: https://www.djcbsoftware.nl/code/mu/
[127]: https://github.com/svenstaro/rofi-calc

[225]: https://aur.archlinux.org/packages/global/
[226]: https://aur.archlinux.org/packages/mu/
[227]: https://aur.archlinux.org/packages/rofi-calc/
