export EMAIL="zueger.peter@icloud.com"
export NAME="Peter Züger"

export EDITOR="emacs --no-window-system"
export VISUAL=$EDITOR
export PAGER=less
export PATH="$PATH:$HOME/.local/bin"

export NETRC="${HOME}/.config/netrc"
export GNUPGHOME="${HOME}/.config/gnupg"
export PYLINTHOME="${HOME}/.config/pylint.d"
export DOCKER_CONFIG="${HOME}/.config/docker"
export ASPELL_CONF="home-dir ${HOME}/.config/aspell"
export LESSHISTFILE=-

export MPY_BAUDRATE=460800

if [ -d "/usr/lib/distcc/bin" ]; then
    export DISTCC_HOSTS="localhost/8"
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
