# dotfiles
My dotfiles. Random copy paste snippets from here: https://wiki.archlinux.org/index.php/Dotfiles and here: https://dotfiles.github.io/ plus some of my creativity.

![screenshot](https://gitlab.com/peterzuger/dotfiles/raw/master/doc/screenshot01.png)

# Requirements
This is a list of all things that have to be installed before installing these dotfiles.

 Dependency                                                   | for
--------------------------------------------------------------|------
 [CMAKE](https://cmake.org/)                                  | [irony-mode](https://github.com/Sarcasm/irony-mode)
 [compton](https://github.com/chjj/compton)                   | A compositor for X11
 [dunst](https://github.com/dunst-project/dunst)              | Lightweight and customizable notification daemon
 [emacs](https://www.gnu.org/software/emacs/)                 | text editor
 [git](https://git-scm.com/)                                  | distributed version control
 [GNU stow](https://www.gnu.org/software/stow/stow.html)      | symlink farm manager
 [i3-gaps](https://github.com/Airblader/i3)                   | i3-gaps - i3 with more features
 [i3status](https://github.com/i3/i3status)                   | Generates status bar
 [libclang](http://clang.llvm.org/doxygen/group__CINDEX.html) | [irony-mode](https://github.com/Sarcasm/irony-mode)
 [nano](https://www.nano-editor.org/)                         | Text Editor
 [rofi](https://github.com/davatorium/rofi)                   | A window switcher, application launcher
 [rofi-calc](https://github.com/svenstaro/rofi-calc)          | Do live calculations in rofi!
 [ranger](https://github.com/ranger/ranger)                   | A VIM-inspired filemanager for the console
 [screen](https://www.gnu.org/software/screen/)               | full-screen window manager
 [urxvt](http://rxvt.sourceforge.net/)                        | our extended virtual terminal
 [zsh](http://www.zsh.org/)                                   | shell

## Auto Install
All these will be automatically installed.

* [liquidprompt](https://github.com/nojhan/liquidprompt)
* [ssh-connect](https://github.com/gko/ssh-connect)

# Installation
These dotfiles are managed with [GNU stow](https://www.gnu.org/software/stow/stow.html).

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

## postinstall
After the automatic installation is done, some more steps have to be executed.

open emacs

Wait for the packages to install

execute
```M-x irony-install-server```
