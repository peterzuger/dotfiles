export EMAIL="zueger.peter@icloud.com"
export NAME="Peter Züger"

export EDITOR="/usr/bin/emacs --no-window-system"
export VISUAL="/usr/bin/emacsclient"
export PAGER=less
export PATH="$PATH:$HOME/.local/bin"

export PASSWORD_STORE_DIR="${HOME}/.config/password-store"
export INPUTRC="${HOME}/.config/inputrc"
export SCREENRC="${HOME}/.config/screenrc"
export SCREENDIR="${XDG_RUNTIME_DIR}/screen"
export NETRC="${HOME}/.config/netrc"
export GNUPGHOME="${HOME}/.config/gnupg"
export GDBHISTFILE="${HOME}/.config/gdb/history"
export PYTHONSTARTUP="${HOME}/.config/python/startup.py"
export PYTHON_HISTORY="${HOME}/.config/python/history"
export WORKON_HOME="${HOME}/.cache/virtualenvs"
export DOCKER_CONFIG="${HOME}/.config/docker"
export ASPELL_CONF="home-dir ${HOME}/.config/aspell"
export LESSHISTFILE=-
export VOLK_CONFIGPATH="${HOME}/.config"
export W3M_DIR="${HOME}/.config/w3m"
export ZDOTDIR="$HOME/.config/zsh"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="${HOME}/.config/java"

export MPY_BAUDRATE=460800

if [ -d "/usr/lib/distcc/bin" ]; then
    export DISTCC_HOSTS="localhost/$(getconf _NPROCESSORS_ONLN)"
    export DISTCC_DIR="${HOME}/.config/distcc"
    export CCACHE_PREFIX="distcc"
fi

if [ -d "/usr/lib/ccache/bin" ]; then
    export PATH="/usr/lib/ccache/bin:${PATH}"
fi

export GOPATH="${HOME}/.config/go"
if [ -d "${GOPATH}" ]; then
    export PATH="${PATH}:${GOPATH}/bin"
fi

export CARGO_HOME="${HOME}/.config/cargo"
if [ -d "${CARGO_HOME}" ]; then
    export PATH="${PATH}:${CARGO_HOME}/bin"
fi
