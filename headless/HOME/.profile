export EMAIL="zueger.peter@icloud.com"
export NAME="Peter Züger"

export EDITOR="/usr/bin/emacs --no-window-system"
export VISUAL="/usr/bin/emacsclient"
export PAGER=less
export PATH="$PATH:$HOME/.local/bin"

export PASSWORD_STORE_DIR="${HOME}/.config/password-store"
export SCREENRC="${HOME}/.config/screenrc"
export NETRC="${HOME}/.config/netrc"
export GNUPGHOME="${HOME}/.config/gnupg"
export PYTHONSTARTUP="${HOME}/.config/python/startup.py"
export WORKON_HOME="${HOME}/.cache/virtualenvs"
export DOCKER_CONFIG="${HOME}/.config/docker"
export ASPELL_CONF="home-dir ${HOME}/.config/aspell"
export LESSHISTFILE=-

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
