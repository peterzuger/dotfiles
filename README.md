<p align="center"><img src="doc/dotfiles.png" alt="~/.*"></p>

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

At the moment that is `home`, there is also a `common` target,
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

### Applications
| Application                                                  | Description                                                                                       | [Arch Packages](https://www.archlinux.org/packages/)                                      |
|--------------------------------------------------------------|---------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| [audacity](https://audacityteam.org/)                        | A program that lets you manipulate digital audio waveforms                                        | [audacity](https://archlinux.org/packages/community/x86_64/audacity/)                     |
| [blender](https://www.blender.org/)                          | A fully integrated 3D graphics creation suite                                                     | [blender](https://archlinux.org/packages/community/x86_64/blender/)                       |
| [freecad](https://freecadweb.org/)                           | Feature based parametric 3D CAD modeler                                                           | [freecad-git](https://aur.archlinux.org/packages/freecad-git)                             |
| [gallery-dl](https://github.com/mikf/gallery-dl)             | Command-line program to download image-galleries and collections from several image hosting sites | [gallery-dl](https://aur.archlinux.org/packages/gallery-dl)                               |
| [gimp](https://www.gimp.org/)                                | GNU Image Manipulation Program                                                                    | [gimp](https://archlinux.org/packages/extra/x86_64/gimp/)                                 |
| [gnuradio](https://gnuradio.org/)                            | General purpose DSP and SDR toolkit. With drivers for usrp and fcd.                               | [gnuradio-companion](https://archlinux.org/packages/community/x86_64/gnuradio-companion/) |
| [gpredict](http://gpredict.oz9aec.net/)                      | Real-time satellite tracking and orbit prediction application                                     | [gpredict](https://aur.archlinux.org/packages/gpredict)                                   |
| [gqrx](http://gqrx.dk/)                                      | Interactive SDR receiver waterfall for many devices.                                              | [gqrx](https://archlinux.org/packages/community-staging/x86_64/gqrx/)                     |
| [inkscape](https://inkscape.org/)                            | Professional vector graphics editor                                                               | [inkscape](https://archlinux.org/packages/extra/x86_64/inkscape/)                         |
| [kicad](http://kicad.org/)                                   | Electronic schematic and printed circuit board (PCB) design tools                                 | [kicad](https://archlinux.org/packages/community/x86_64/kicad/)                           |
| [libreoffice](https://www.libreoffice.org/)                  | LibreOffice maintenance branch                                                                    | [libreoffice-still](https://archlinux.org/packages/extra/x86_64/libreoffice-still/)       |
| [nmap](https://nmap.org/)                                    | Utility for network discovery and security auditing                                               | [nmap](https://archlinux.org/packages/extra/x86_64/nmap/)                                 |
| [openscad](https://openscad.org/)                            | The programmers solid 3D CAD modeller                                                             | [openscad](https://archlinux.org/packages/extra/x86_64/openscad/)                         |
| [orcaslicer](https://github.com/SoftFever/OrcaSlicer)        | G-code generator for 3D printers                                                                  | [orca-slicer](https://aur.archlinux.org/packages/orca-slicer-bin)                         |
| [prismlauncher](https://prismlauncher.org/)                  | Minecraft launcher with ability to manage multiple instances                                      | [prismlauncher](https://archlinux.org/packages/extra/x86_64/prismlauncher/)               |
| [wsjtx](http://physics.princeton.edu/pulsar/k1jt/wsjtx.html) | Software for Amateur Radio Weak-Signal Communication (JT9 and JT65)                               | [wsjtx](https://aur.archlinux.org/packages/wsjtx)                                         |
| [xournalpp](https://github.com/xournalpp/xournalpp)          | Handwriting notetaking software with PDF annotation support                                       | [xournalpp](https://archlinux.org/packages/extra/x86_64/xournalpp/)                       |
| [yt-dlp](https://github.com/yt-dlp/yt-dlp)                   | A youtube-dl fork with additional features and fixes                                              | [yt-dlp](https://archlinux.org/packages/community/any/yt-dlp/)                            |


### Prerequisites
Following Prerequisites must be installed from here: [Arch Packages](https://www.archlinux.org/packages/)

| Prerequisites                                                                    | Description                                                                                                   | [Arch Packages](https://www.archlinux.org/packages/)                                                                                                                                   |
|----------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [acpi](https://sourceforge.net/projects/acpiclient/files/acpiclient/)            | Client for battery, power, and thermal readings                                                               | [acpi](https://www.archlinux.org/packages/community/x86_64/acpi/)                                                                                                                      |
| [alsa-card-profiles](https://pipewire.org/)                                      | Low-latency audio/video router and processor - ALSA card profiles                                             | [alsa-card-profiles](https://archlinux.org/packages/extra/x86_64/alsa-card-profiles/)                                                                                                  |
| [alsa](https://www.alsa-project.org/wiki/Main_Page)                              | An alternative implementation of Linux sound support                                                          | [alsa-utils](https://www.archlinux.org/packages/extra/x86_64/alsa-utils/)                                                                                                              |
| [apparmor](https://gitlab.com/apparmor)                                          | Mandatory Access Control (MAC) using Linux Security Module (LSM)                                              | [apparmor](https://www.archlinux.org/packages/extra/x86_64/apparmor/)                                                                                                                  |
| [arch-audit](https://gitlab.com/ilpianista/arch-audit)                           | A utility like pkg-audit based on Arch Security Team data                                                     | [arch-audit](https://archlinux.org/packages/community/x86_64/arch-audit/)                                                                                                              |
| [atop](https://www.atoptool.nl/)                                                 | A system and process level monitor                                                                            | [atop](https://archlinux.org/packages/community/x86_64/atop/)                                                                                                                          |
| [audit](https://people.redhat.com/sgrubb/audit/)                                 | Userspace components of the audit framework                                                                   | [audit](https://www.archlinux.org/packages/core/x86_64/audit/)                                                                                                                         |
| [avahi](https://github.com/lathiat/avahi)                                        | Service Discovery for Linux using mDNS/DNS-SD -- compatible with Bonjour                                      | [avahi](https://archlinux.org/packages/extra/x86_64/avahi/)                                                                                                                            |
| [base-devel](https://www.archlinux.org/groups/x86_64/base-devel/)                | Developer utilities                                                                                           | [base-devel](https://www.archlinux.org/groups/x86_64/base-devel/)                                                                                                                      |
| [bluez-utils](http://www.bluez.org/)                                             | Development and debugging utilities for the bluetooth protocol stack                                          | [bluez-util](https://archlinux.org/packages/extra/x86_64/bluez-utils/)                                                                                                                 |
| [bluez](http://www.bluez.org/)                                                   | Daemons for the bluetooth protocol stack                                                                      | [bluez](https://www.archlinux.org/packages/extra/x86_64/bluez/)                                                                                                                        |
| [borg](https://www.borgbackup.org/)                                              | Deduplicating backup program with compression and authenticated encryption                                    | [borg](https://www.archlinux.org/packages/community/x86_64/borg/)                                                                                                                      |
| [btrfs-progs](https://btrfs.wiki.kernel.org/)                                    | Btrfs filesystem utilities                                                                                    | [btrfs-progs](https://archlinux.org/packages/core/x86_64/btrfs-progs/)                                                                                                                 |
| [ccache](https://ccache.dev/)                                                    | compiler cache                                                                                                | [ccache](https://www.archlinux.org/packages/community/x86_64/ccache/)                                                                                                                  |
| [clang](https://clang.llvm.org/)                                                 | C language family frontend for LLVM                                                                           | [clang](https://archlinux.org/packages/extra/x86_64/clang/)                                                                                                                            |
| [cmus](https://cmus.github.io/)                                                  | Feature-rich ncurses-based music player                                                                       | [cmus](https://archlinux.org/packages/community/x86_64/cmus/)                                                                                                                          |
| [cups](https://openprinting.github.io/cups/)                                     | The CUPS Printing System - daemon package                                                                     | [cups](https://archlinux.org/packages/extra/x86_64/cups/)                                                                                                                              |
| [curl](https://curl.haxx.se)                                                     | An URL retrieval utility and library                                                                          | [curl](https://archlinux.org/packages/core/x86_64/curl/)                                                                                                                               |
| [dejavu](https://dejavu-fonts.github.io/)                                        | Font family based on the Bitstream Vera Fonts with a wider range of characters                                | [ttf-dejavu](https://www.archlinux.org/packages/extra/any/ttf-dejavu/)                                                                                                                 |
| [dhcpd](https://roy.marples.name/projects/dhcpcd/)                               | RFC2131 compliant DHCP client daemon                                                                          | [dhcpcd](https://www.archlinux.org/packages/core/x86_64/dhcpcd/)                                                                                                                       |
| [distcc](https://github.com/distcc/distcc)                                       | Distributed compilation service for C, C++ and Objective-C                                                    | [distcc](https://archlinux.org/packages/community/x86_64/distcc/)                                                                                                                      |
| [docker-compose](https://www.docker.com/)                                        | Fast, isolated development environments using Docker                                                          | [docker-compose](https://archlinux.org/packages/community/x86_64/docker-compose/)                                                                                                      |
| [docker](https://www.docker.com/)                                                | Pack, ship and run any application as a lightweight container                                                 | [docker](https://archlinux.org/packages/community/x86_64/docker/)                                                                                                                      |
| [dstat](http://dag.wieers.com/home-made/dstat/)                                  | A versatile resource statistics tool                                                                          | [dstat](https://archlinux.org/packages/community/any/dstat/)                                                                                                                           |
| [dunst](https://dunst-project.org/)                                              | Customizable and lightweight notification-daemon                                                              | [dunst](https://www.archlinux.org/packages/community/x86_64/dunst/)                                                                                                                    |
| [emacs](https://www.gnu.org/software/emacs/)                                     | The extensible, customizable, self-documenting real-time display editor                                       | [emacs](https://www.archlinux.org/packages/extra/x86_64/emacs/)                                                                                                                        |
| [feh](https://feh.finalrewind.org/)                                              | Fast and light imlib2-based image viewer                                                                      | [feh](https://www.archlinux.org/packages/extra/x86_64/feh/)                                                                                                                            |
| [ffmpeg](https://ffmpeg.org/)                                                    | Complete solution to record, convert and stream audio and video                                               | [ffmpeg](https://archlinux.org/packages/extra/x86_64/ffmpeg/)                                                                                                                          |
| [firefox](https://www.mozilla.org/en-US/firefox/)                                | Standalone web browser from mozilla.org                                                                       | [firefox](https://www.archlinux.org/packages/extra/x86_64/firefox/)                                                                                                                    |
| [firejail](https://github.com/netblue30/firejail)                                | Linux namespaces sandbox program                                                                              | [firejail](https://www.archlinux.org/packages/community/x86_64/firejail/)                                                                                                              |
| [font-awesome](https://fontawesome.com/)                                         | Iconic font designed for Bootstrap                                                                            | [ttf-font-awesome/](https://archlinux.org/packages/community/any/ttf-font-awesome/)                                                                                                    |
| [gdb](https://www.gnu.org/software/gdb/)                                         | The GNU Project Debugger                                                                                      | [gdb](https://www.archlinux.org/packages/extra/x86_64/gdb/)                                                                                                                            |
| [git](https://git-scm.com/)                                                      | the fast distributed version control system                                                                   | [git](https://www.archlinux.org/packages/extra/x86_64/git/)                                                                                                                            |
| [gnuradio-osmosdr](https://osmocom.org/projects/gr-osmosdr)                      | Source block for Funcube Dongle, RTL-SDR, USRP, OsmoSDR, BladeRF, HackRF and AirSpy devices                   | [gnuradio-osmosdr](https://archlinux.org/packages/community/x86_64/gnuradio-osmosdr/)                                                                                                  |
| [grub](https://www.gnu.org/software/grub/)                                       | GNU GRand Unified Bootloader (2)                                                                              | [grub](https://archlinux.org/packages/core/x86_64/grub/)                                                                                                                               |
| [hdparm](https://sourceforge.net/projects/hdparm/)                               | A shell utility for manipulating Linux IDE drive/driver parameters                                            | [hdparm](https://archlinux.org/packages/core/x86_64/hdparm/)                                                                                                                           |
| [htop](https://htop.dev/)                                                        | Interactive process viewer                                                                                    | [htop](https://archlinux.org/packages/extra/x86_64/htop/)                                                                                                                              |
| [i3-gaps](https://github.com/Airblader/i3)                                       | A fork of i3wm tiling window manager with more features, including gaps                                       | [i3-gaps](https://www.archlinux.org/packages/community/x86_64/i3-gaps/)                                                                                                                |
| [i3lock](https://github.com/i3/i3lock)                                           | improved screen locker                                                                                        | [i3lock-color](https://aur.archlinux.org/packages/i3lock-color/)                                                                                                                       |
| [i3status](https://github.com/i3/i3status)                                       | Generates status bar to use with i3bar, dzen2 or xmobar                                                       | [i3status](https://www.archlinux.org/packages/community/x86_64/i3status/)                                                                                                              |
| [imagemagick](https://www.imagemagick.org/)                                      | An image viewing/manipulation program                                                                         | [imagemagick](https://archlinux.org/packages/extra/x86_64/imagemagick/)                                                                                                                |
| [inetutils](http://www.gnu.org/software/inetutils/)                              | A collection of common network programs                                                                       | [inetutils](https://www.archlinux.org/packages/core/x86_64/inetutils/)                                                                                                                 |
| [iotop](http://guichaz.free.fr/iotop/)                                           | View I/O usage of processes                                                                                   | [iotop](https://archlinux.org/packages/community/any/iotop/)                                                                                                                           |
| [iwd](https://git.kernel.org/cgit/network/wireless/iwd.git/)                     | Internet Wireless Daemon                                                                                      | [iwd](https://archlinux.org/packages/community/x86_64/iwd/)                                                                                                                            |
| [kicad-library-3d](http://kicad.org/)                                            | KiCad 3D model libraries                                                                                      | [kicad-library-3d](https://archlinux.org/packages/community/any/kicad-library-3d/)                                                                                                     |
| [kicad-library](http://kicad.org/)                                               | KiCad symbol, footprint and template libraries                                                                | [kicad-library](https://archlinux.org/packages/community/any/kicad-library/)                                                                                                           |
| [libimobiledevice](https://libimobiledevice.org/)                                | Library that talks the protocols to support iPhone and iPod Touch devices on Linux                            | [libimobiledevice](https://archlinux.org/packages/extra/x86_64/libimobiledevice/)                                                                                                      |
| [libjaylink](https://gitlab.zapb.de/libjaylink/libjaylink)                       | Library for accessing SEGGER J-Link and compatible devices                                                    | [libjaylink](https://archlinux.org/packages/community/x86_64/libjaylink/)                                                                                                              |
| [llvm](https://llvm.org/)                                                        | Collection of modular and reusable compiler and toolchain technologies                                        | [llvm](https://archlinux.org/packages/extra/x86_64/llvm/)                                                                                                                              |
| [lvm2](https://sourceware.org/lvm2/)                                             | Logical Volume Manager 2 utilities                                                                            | [lvm2](https://archlinux.org/packages/core/x86_64/lvm2/)                                                                                                                               |
| [maim](https://github.com/naelstrof/maim)                                        | Utility to take a screenshot using imlib2                                                                     | [maim](https://www.archlinux.org/packages/community/x86_64/maim/)                                                                                                                      |
| [man](https://www.nongnu.org/man-db/)                                            | A utility for reading man pages                                                                               | [man-db](https://archlinux.org/packages/core/x86_64/man-db/) [man-pages](https://archlinux.org/packages/core/any/man-pages/)                                                           |
| [mlocate](https://pagure.io/mlocate)                                             | A utility for finding files by name quickly                                                                   | [mlocate](https://www.archlinux.org/packages/core/x86_64/mlocate/)                                                                                                                     |
| [mpv](https://mpv.io/)                                                           | a free, open source, and cross-platform media player                                                          | [mpv](https://archlinux.org/packages/community/x86_64/mpv/)                                                                                                                            |
| [mu](http://www.djcbsoftware.nl/code/mu)                                         | Maildir indexer/searcher and Emacs client (mu4e)                                                              | [mu](https://aur.archlinux.org/packages/mu/)                                                                                                                                           |
| [multimon-ng](https://github.com/EliasOenal/multimon-ng)                         | An sdr decoder, supports pocsag, ufsk, clipfsk, afsk, hapn, fsk, dtmf, zvei.                                  | [multimon-ng](https://archlinux.org/packages/community/x86_64/multimon-ng/)                                                                                                            |
| [nano](https://www.nano-editor.org/)                                             | Pico editor clone with enhancements                                                                           | [nano](https://www.archlinux.org/packages/core/x86_64/nano/)                                                                                                                           |
| [neofetch](https://github.com/dylanaraps/neofetch)                               | A CLI system information tool written in BASH that supports displaying images.                                | [neofetch](https://archlinux.org/packages/community/any/neofetch/)                                                                                                                     |
| [net-tools](http://net-tools.sourceforge.net/)                                   | Configuration tools for Linux networking                                                                      | [net-tools](https://archlinux.org/packages/core/x86_64/net-tools/)                                                                                                                     |
| [networkmanager](https://wiki.gnome.org/Projects/NetworkManager)                 | Network connection manager and user applications                                                              | [networkmanager](https://www.archlinux.org/packages/extra/x86_64/networkmanager/)                                                                                                      |
| [noto-cjk](https://www.google.com/get/noto/)                                     | Google Noto CJK fonts                                                                                         | [noto-fonts-cjk](https://www.archlinux.org/packages/extra/any/noto-fonts-cjk/)                                                                                                         |
| [noto-emoji](https://www.google.com/get/noto/)                                   | Google Noto emoji fonts                                                                                       | [noto-fonts-emoji](https://www.archlinux.org/packages/extra/any/noto-fonts-emoji/)                                                                                                     |
| [noto](https://www.google.com/get/noto/)                                         | Google Noto TTF fonts                                                                                         | [noto-fonts](https://www.archlinux.org/packages/extra/any/noto-fonts/)                                                                                                                 |
| [openbsd-netcat](https://salsa.debian.org/debian/netcat-openbsd)                 | TCP/IP swiss army knife. OpenBSD variant.                                                                     | [openbsd-netcat](https://archlinux.org/packages/community/x86_64/openbsd-netcat/)                                                                                                      |
| [openresolv](https://roy.marples.name/projects/openresolv)                       | resolv.conf management framework (resolvconf)                                                                 | [openresolv](https://archlinux.org/packages/core/any/openresolv/)                                                                                                                      |
| [openssh](https://www.openssh.com/portable.html)                                 | Premier connectivity tool for remote login with the SSH protocol                                              | [openssh](https://www.archlinux.org/packages/core/x86_64/openssh/)                                                                                                                     |
| [openvpn](https://openvpn.net/index.php/open-source.html)                        | An easy-to-use, robust and highly configurable VPN (Virtual Private Network)                                  | [openvpn](https://archlinux.org/packages/extra/x86_64/openvpn/)                                                                                                                        |
| [pacman-contrib](https://gitlab.archlinux.org/pacman/pacman-contrib)             | Contributed scripts and tools for pacman systems                                                              | [pacman-contrib](https://archlinux.org/packages/community/x86_64/pacman-contrib/)                                                                                                      |
| [pass](https://www.passwordstore.org/)                                           | Stores, retrieves, generates, and synchronizes passwords securely                                             | [pass](https://archlinux.org/packages/community/any/pass/)                                                                                                                             |
| [pdftk](https://gitlab.com/pdftk-java/pdftk)                                     | Command-line tool for working with PDFs                                                                       | [pdftk](https://archlinux.org/packages/community/any/pdftk/)                                                                                                                           |
| [peda-git](https://github.com/longld/peda)                                       | Python Exploit Development Assistance for GDB                                                                 | [peda-git (AUR)](https://aur.archlinux.org/packages/peda-git/)                                                                                                                         |
| [perf](https://www.kernel.org/)                                                  | Linux kernel performance auditing tool                                                                        | [perf](https://archlinux.org/packages/community/x86_64/perf/)                                                                                                                          |
| [picom](https://github.com/yshui/picom)                                          | X compositor that may fix tearing issues                                                                      | [picom](https://www.archlinux.org/packages/community/x86_64/picom/)                                                                                                                    |
| [pulseaudio-alsa](https://www.freedesktop.org/wiki/Software/PulseAudio/)         | A featureful, general-purpose sound server                                                                    | [pulseaudio-alsa](https://www.archlinux.org/packages/extra/x86_64/pulseaudio-alsa/)                                                                                                    |
| [pv](https://www.ivarch.com/programs/pv.shtml)                                   | A terminal-based tool for monitoring the progress of data through a pipeline                                  | [pv](https://archlinux.org/packages/community/x86_64/pv/)                                                                                                                              |
| [python-kikit](https://github.com/yaqwsx/KiKit)                                  | Automation tools for KiCAD                                                                                    | [python-kikit](https://archlinux.org/packages/community/any/python-kikit/)                                                                                                             |
| [python-pip](https://pip.pypa.io/)                                               | The PyPA recommended tool for installing Python packages                                                      | [python-pip](https://archlinux.org/packages/extra/any/python-pip/)                                                                                                                     |
| [python-virtualenv](https://virtualenv.pypa.io/)                                 | Virtual Python Environment builder                                                                            | [python-virtualenv](https://archlinux.org/packages/extra/any/python-virtualenv/)                                                                                                       |
| [python-virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/)            | Extensions to Ian Bicking's virtualenv tool                                                                   | [python-virtualenvwrapper](https://archlinux.org/packages/community/any/python-virtualenvwrapper/)                                                                                     |
| [ranger](http://ranger.github.io/)                                               | Simple, vim-like file manager                                                                                 | [ranger](https://www.archlinux.org/packages/community/any/ranger/)                                                                                                                     |
| [reflector](https://xyne.archlinux.ca/projects/reflector)                        | A Python 3 module and script to retrieve and filter the latest Pacman mirror list                             | [reflector](https://archlinux.org/packages/community/any/reflector/)                                                                                                                   |
| [rkhunter](http://rkhunter.sourceforge.net/)                                     | Checks machines for the presence of rootkits and other unwanted tools.                                        | [rkhunter](https://archlinux.org/packages/community/any/rkhunter/)                                                                                                                     |
| [rofi-calc](https://github.com/svenstaro/rofi-calc)                              | Do live calculations in rofi!                                                                                 | [rofi-calc](https://www.archlinux.org/packages/community/x86_64/rofi-calc/)                                                                                                            |
| [rofi](https://github.com/davatorium/rofi)                                       | A window switcher, application launcher and dmenu replacement                                                 | [rofi](https://www.archlinux.org/packages/community/x86_64/rofi/)                                                                                                                      |
| [rsync](https://rsync.samba.org/)                                                | A fast and versatile file copying tool for remote and local files                                             | [rsync](https://archlinux.org/packages/extra/x86_64/rsync/)                                                                                                                            |
| [rtl_433](https://github.com/merbanan/rtl_433)                                   | is a generic data receiver, mainly for the 433.92 MHz, 868 MHz (SRD), 315 MHz, 345 MHz, and 915 MHz ISM bands | [rtl_433](https://aur.archlinux.org/packages/rtl_433)                                                                                                                                  |
| [rtorrent](https://rakshasa.github.io/rtorrent/)                                 | Ncurses BitTorrent client based on libTorrent                                                                 | [rtorrent](https://archlinux.org/packages/community/x86_64/rtorrent/)                                                                                                                  |
| [rust-analyzer](https://rust-analyzer.github.io/)                                | Rust compiler front-end for IDEs                                                                              | [rust-analyzer](https://archlinux.org/packages/community/x86_64/rust-analyzer/)                                                                                                        |
| [rust](https://www.rust-lang.org/)                                               | Systems programming language focused on safety, speed and concurrency                                         | [rust](https://archlinux.org/packages/extra/x86_64/rust/)                                                                                                                              |
| [screen](https://www.gnu.org/software/screen/)                                   | Full-screen window manager that multiplexes a physical terminal                                               | [screen](https://www.archlinux.org/packages/extra/x86_64/screen/)                                                                                                                      |
| [screenkey](https://www.thregr.org/~wavexx/software/screenkey/)                  | A screencast tool to display your keys inspired by Screenflick                                                | [screenkey](https://archlinux.org/packages/extra-staging/any/screenkey/)                                                                                                               |
| [sdparm](http://sg.danny.cz/sg/sdparm.html)                                      | An utility similar to hdparm but for SCSI devices                                                             | [sdparm](https://archlinux.org/packages/core/x86_64/sdparm/)                                                                                                                           |
| [server](https://www.x.org/wiki/)                                                | Xorg X server                                                                                                 | [xorg-server](https://www.archlinux.org/packages/extra/x86_64/xorg-server/)                                                                                                            |
| [smartmontools](http://smartmontools.sourceforge.net/)                           | Control and monitor S.M.A.R.T. enabled ATA and SCSI Hard Drives                                               | [smartmontools](https://archlinux.org/packages/extra/x86_64/smartmontools/)                                                                                                            |
| [soapyplutosdr](https://github.com/pothosware/SoapyPlutoSDR)                     | Soapy SDR plugin for PlutoSDR                                                                                 | [soapyplutosdr](https://archlinux.org/packages/community/x86_64/soapyplutosdr/)                                                                                                        |
| [socat](http://www.dest-unreach.org/socat/)                                      | Multipurpose relay                                                                                            | [socat](https://archlinux.org/packages/extra/x86_64/socat/)                                                                                                                            |
| [source-code-pro](https://adobe-fonts.github.io/source-code-pro/)                | Monospaced font family for user interface and coding environments                                             | [adobe-source-code-pro-fonts](https://archlinux.org/packages/extra/any/adobe-source-code-pro-fonts/)                                                                                   |
| [sshfs](https://github.com/libfuse/sshfs)                                        | FUSE client based on the SSH File Transfer Protocol                                                           | [sshfs](https://archlinux.org/packages/community/x86_64/sshfs/)                                                                                                                        |
| [stow](https://www.gnu.org/software/stow/)                                       | Manage installation of multiple softwares in the same directory tree                                          | [stow](https://www.archlinux.org/packages/community/any/stow/)                                                                                                                         |
| [strace](https://strace.io/)                                                     | A diagnostic, debugging and instructional userspace tracer                                                    | [strace](https://archlinux.org/packages/extra/x86_64/strace/)                                                                                                                          |
| [symbola](http://users.teilar.gr/~g1951d/)                                       | Font for unicode symbols (part of Unicode Fonts for Ancient Scripts).                                         | [ttf-symbola (AUR)](https://aur.archlinux.org/packages/ttf-symbola/)                                                                                                                   |
| [sysstat](http://pagesperso-orange.fr/sebastien.godard/)                         | a collection of performance monitoring tools (iostat,isag,mpstat,pidstat,sadf,sar)                            | [sysstat](https://archlinux.org/packages/community/x86_64/sysstat/)                                                                                                                    |
| [tlp](https://linrunner.de/en/tlp/tlp.html)                                      | Linux Advanced Power Management                                                                               | [tlp](https://archlinux.org/packages/community/any/tlp/)                                                                                                                               |
| [torbrowser-launcher](github.com/micahflee/torbrowser-launcher)                  | Securely and easily download, verify, install, and launch Tor Browser in Linux                                | [torbrowser-launcher](https://www.archlinux.org/packages/community/any/torbrowser-launcher/)                                                                                           |
| [torsocks](https://gitweb.torproject.org/torsocks.git/)                          | Wrapper to safely torify applications                                                                         | [torsocks](https://www.archlinux.org/packages/community/x86_64/torsocks/)                                                                                                              |
| [udiskie](https://github.com/coldfix/udiskie)                                    | Removable disk automounter using udisks                                                                       | [udiskie](https://www.archlinux.org/packages/community/any/udiskie/)                                                                                                                   |
| [ufw](https://launchpad.net/ufw)                                                 | Uncomplicated and easy to use CLI tool for managing a netfilter firewall                                      | [ufw](https://archlinux.org/packages/community/any/ufw/)                                                                                                                               |
| [uncrustify](http://uncrustify.sourceforge.net/)                                 | A source code beautifier                                                                                      | [uncrustify](https://archlinux.org/packages/extra/x86_64/uncrustify/)                                                                                                                  |
| [urxvt](http://software.schmorp.de/pkg/rxvt-unicode.html)                        | Unicode enabled rxvt-clone terminal emulator (urxvt)                                                          | [rxvt-unicode](https://www.archlinux.org/packages/community/x86_64/rxvt-unicode/), [rxvt-unicode-terminfo](https://www.archlinux.org/packages/community/x86_64/rxvt-unicode-terminfo/) |
| [usbguard](https://github.com/USBGuard/usbguard)                                 | Software framework for implementing USB device authorization policies                                         | [usbguard](https://archlinux.org/packages/extra/x86_64/usbguard/)                                                                                                                      |
| [usbmuxd](https://marcansoft.com/blog/iphonelinux/usbmuxd/)                      | USB Multiplex Daemon                                                                                          | [usbmuxd](https://archlinux.org/packages/extra/x86_64/usbmuxd/)                                                                                                                        |
| [usbutils](https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usbutils.git/) | A collection of USB tools to query connected USB devices                                                      | [usbutils](https://archlinux.org/packages/core/x86_64/usbutils/)                                                                                                                       |
| [valgrind](http://valgrind.org/)                                                 | Tool to help find memory-management problems in programs                                                      | [valgrind](https://archlinux.org/packages/extra/x86_64/valgrind/)                                                                                                                      |
| [w3m](http://w3m.sourceforge.net/)                                               | text-based web browser                                                                                        | [w3m](https://www.archlinux.org/packages/extra/x86_64/w3m/)                                                                                                                            |
| [wget](https://www.gnu.org/software/wget/wget.html)                              | Network utility to retrieve files from the Web                                                                | [wget](https://archlinux.org/packages/extra/x86_64/wget/)                                                                                                                              |
| [wireguard](https://www.wireguard.com/)                                          | next generation secure network tunnel - tools for configuration                                               | [wireguard-tools](https://www.archlinux.org/packages/extra/x86_64/wireguard-tools/)                                                                                                    |
| [wireshark-cli](https://www.wireshark.org/)                                      | Network traffic and protocol analyzer/sniffer - CLI tools and data files                                      | [wireshark-cli](https://archlinux.org/packages/community/x86_64/wireshark-cli/)                                                                                                        |
| [xauth](https://xorg.freedesktop.org/)                                           | X.Org authorization settings program                                                                          | [xorg-xauth](https://www.archlinux.org/packages/extra/x86_64/xorg-xauth/)                                                                                                              |
| [xautolock](http://ibiblio.org/pub/Linux/X11/screensavers/)                      | An automatic X screen-locker/screen-saver                                                                     | [xautolock](https://www.archlinux.org/packages/community/x86_64/xautolock/)                                                                                                            |
| [xbacklight](https://xorg.freedesktop.org/wiki/)                                 | RandR-based backlight control application                                                                     | [xorg-xbacklight](https://www.archlinux.org/packages/extra/x86_64/xorg-xbacklight/)                                                                                                    |
| [xclip](https://github.com/astrand/xclip)                                        | Command line interface to the X11 clipboard                                                                   | [xclip](https://www.archlinux.org/packages/extra/x86_64/xclip/)                                                                                                                        |
| [xdm](https://xorg.freedesktop.org/)                                             | X Display Manager                                                                                             | [xorg-xdm](https://www.archlinux.org/packages/extra/x86_64/xorg-xdm/)                                                                                                                  |
| [xdotool](https://www.semicomplete.com/projects/xdotool/)                        | Command-line X11 automation tool                                                                              | [xdotool](https://www.archlinux.org/packages/community/x86_64/xdotool/)                                                                                                                |
| [xinit](https://xorg.freedesktop.org/)                                           | X.Org initialisation program                                                                                  | [xorg-xinit](https://archlinux.org/packages/extra/x86_64/xorg-xinit/)                                                                                                                  |
| [xinput](https://xorg.freedesktop.org/)                                          | Small commandline tool to configure devices                                                                   | [xorg-xinput](https://archlinux.org/packages/extra/x86_64/xorg-xinput/)                                                                                                                |
| [yay](https://github.com/Jguer/yay)                                              | Yet another yogurt. Pacman wrapper and AUR helper written in go.                                              | [yay](https://aur.archlinux.org/packages/yay)                                                                                                                                          |
| [zsh-completions](https://github.com/zsh-users/zsh-completions)                  | Additional completion definitions for Zsh                                                                     | [zsh-completions](https://archlinux.org/packages/community/any/zsh-completions/)                                                                                                       |
| [zsh](http://www.zsh.org/)                                                       | A very advanced and programmable command interpreter (shell) for UNIX                                         | [zsh](https://www.archlinux.org/packages/extra/x86_64/zsh/)                                                                                                                            |


Following Prerequisites are for my emacs configuration;

| Prerequisites                                           | Description                                                       | [Arch Packages](https://www.archlinux.org/packages/)                       |
|---------------------------------------------------------|-------------------------------------------------------------------|----------------------------------------------------------------------------|
| [aspell-de](https://j3e.de/ispell/igerman98/index.html) | German dictionary for aspell                                      | [aspell-de](https://archlinux.org/packages/extra/x86_64/aspell-de/)        |
| [aspell-en](http://aspell.net/)                         | English dictionary for aspell                                     | [aspell-en](https://archlinux.org/packages/extra/x86_64/aspell-en/)        |
| [aspell](http://aspell.net/)                            | A spell checker designed to eventually replace Ispell             | [aspell](https://archlinux.org/packages/extra/x86_64/aspell/)              |
| [bandit](https://github.com/PyCQA/bandit)               | Python security linter from OpenStack Security                    | [bandit](https://archlinux.org/packages/community/any/bandit/)             |
| [cmake](https://www.cmake.org/)                         | A cross-platform open-source make system                          | [cmake](https://archlinux.org/packages/extra/x86_64/cmake/)                |
| [ctags](http://ctags.sourceforge.net/)                  | Generates an index file of language objects found in source files | [ctags](https://www.archlinux.org/packages/extra/x86_64/ctags/)            |
| [flake8](https://flake8.pycqa.org/)                     | The modular source code checker: pep8, pyflakes and co            | [flake8](https://archlinux.org/packages/community/any/flake8/)             |
| [global](https://www.gnu.org/software/global/)          | Source code tag system                                            | [global](https://archlinux.org/packages/community/x86_64/global/)          |
| [go](https://golang.org/)                               | Core compiler tools for the Go programming language               | [go](https://archlinux.org/packages/community/x86_64/go/)                  |
| [llvm-libs](https://llvm.org/)                          | LLVM runtime libraries                                            | [llvm-libs](https://archlinux.org/packages/extra/x86_64/llvm-libs/)        |
| [offlineimap](http://offlineimap.org/)                  | Synchronizes emails between two repositories                      | [offlineimap](https://archlinux.org/packages/community/any/offlineimap/)   |
| [python-black](https://github.com/psf/black)            | Uncompromising Python code formatter                              | [python-black](https://archlinux.org/packages/community/any/python-black/) |
| [python-pylint](https://pylint.org)                     | Analyzes Python code looking for bugs and signs of poor quality   | [python-pylint](https://archlinux.org/packages/extra/any/python-pylint/)   |
| [texlive](http://tug.org/texlive/)                      | TeX Live core distribution                                        | [texlive](https://archlinux.org/packages/extra/any/texlive-core/)          |


Following Prerequisites might need to be changed depending on your hardware configuration:

| Prerequisites                                                      | Description                                                 | [Arch Packages](https://www.archlinux.org/packages/)                                  |
|--------------------------------------------------------------------|-------------------------------------------------------------|---------------------------------------------------------------------------------------|
| [efibootmgr](https://github.com/rhboot/efibootmgr)                 | Linux user-space application to modify the EFI Boot Manager | [efibootmgr](https://archlinux.org/packages/core/x86_64/efibootmgr/)                  |
| [intel-ucode](https://github.com/intel/)                           | Microcode update files for Intel CPUs                       | [intel-ucode](https://archlinux.org/packages/extra/any/intel-ucode/)                  |
| [xf86-video-intel](https://01.org/linuxgraphics)                   | X.org Intel i810/i830/i915/945G/G965+ video drivers         | [xf86-video-intel](https://www.archlinux.org/packages/extra/x86_64/xf86-video-intel/) |
| [xf86-input-wacom](https://github.com/linuxwacom/xf86-input-wacom) | X.Org Wacom tablet driver                                   | [xf86-input-wacom](https://archlinux.org/packages/extra/x86_64/xf86-input-wacom/)     |


### Optional Prerequisites
Following packages might be installed for convenience:

| Prerequisites                                      | Description                                                                               | [Arch Packages](https://www.archlinux.org/packages/)                 |
|----------------------------------------------------|-------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| [7z](http://p7zip.sourceforge.net/)                | p7zip is a port of 7za.exe for POSIX systems                                              | [p7zip](https://www.archlinux.org/packages/extra/x86_64/p7zip/)      |
| [lzip](https://www.nongnu.org/lzip/lzip.html)      | A lossless file compressor based on the LZMA algorithm                                    | [lzip](https://archlinux.org/packages/community/x86_64/lzip/)        |
| [lzma](https://tukaani.org/xz/)                    | XZ Utils is free general-purpose data compression software with a high compression ratio. | [xz](https://www.archlinux.org/packages/core/x86_64/xz/)             |
| [lzop](https://www.lzop.org/)                      | lzop is a file compressor which is very similar to gzip.                                  | [lzop](https://www.archlinux.org/packages/extra/x86_64/lzop/)        |
| [perl-libwww](https://github.com/libwww-perl)      | The World-Wide Web library for Perl                                                       | [perl-libwww](https://archlinux.org/packages/extra/any/perl-libwww/) |
| [rar](https://www.rarlab.com/)                     | powerful archive manager                                                                  | [rar](https://aur.archlinux.org/packages/rar/)                       |
| [unzip](http://infozip.sourceforge.net/UnZip.html) | UnZip is an extraction utility for archives compressed in .zip format                     | [unzip](https://www.archlinux.org/packages/extra/x86_64/unzip/)      |
| [zip](http://infozip.sourceforge.net/Zip.html)     | compression and file packaging/archive utility                                            | [zip](https://www.archlinux.org/packages/extra/x86_64/zip/)          |

Install `perl-libwww` like this:

```
sudo pacman -S perl-libwww --asdeps git
```

### Automatic Prerequisites
Following things are installed automatically, via git submodules.

| Prerequisites                                          | Description                                                         |
|--------------------------------------------------------|---------------------------------------------------------------------|
| [liquidprompt](https://github.com/nojhan/liquidprompt) | A full-featured & carefully designed adaptive prompt for Bash & Zsh |
| [ssh-connect](https://github.com/gko/ssh-connect)      | simple ssh manager based on bash/zsh history                        |


### Installing
Before installing the dotfiles, a few things have to be setup manualy.

Create a a user:
```
useradd -m -G wheel uucp peter
```

When using docker, wireshark or tor, add the user to the docker,
wireshark and tor groups respectively.


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

for CUPS to find `.local` printers, change the host: line in `/etc/nsswitch.conf` to:
```
hosts: mymachines mdns_minimal [NOTFOUND=return] resolve [!UNAVAIL=return] files myhostname dns
```

this enables `.local` hostname resolution.

To enable printing with CUPS enable the required services:
```
sudo systemctl enable avahi-deamon.service
sudo systemctl enable cups.service
```

To install these dotfiles, just clone the repo, it does not need to
be in any special folder, just put it where you like.
The `--recursive` is __required__, otherwise the sub-repository's wont be downloaded.
```
git clone --recursive https://github.com/peterzuger/dotfiles.git
cd dotfiles
```

now that you have all the sources, just `make home`!
```
make home
```

make will deploy all dotfiles with [stow](https://www.gnu.org/software/stow/).
This tool just creates symbolic links for all files, it will not override
any files when doing so and just fails if it can't create a link.

Once the files are deployed, the grub config can be regenerated,
for this you must first place the [breeze](https://github.com/gustawho/grub2-theme-breeze)
grub theme in `/boot/grub/themes/breeze`.

Then you can regenerate the grub config: (using the correct path if this is not correct)
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

There are still a few services that can be enabled to provide some additional functionality:
To enable them all use:
```
systemctl --user enable dunst.service picom.service udiskie.service xautolock.service
```

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

- mod + L             - lock the screen __now__
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
