export EMAIL="zueger.peter@icloud.com"
export NAME="Peter Züger"
export MPY_BAUDRATE=460800

if [ -d "/usr/lib/ccache/bin" ]; then
    export PATH="/usr/lib/ccache/bin:${PATH}"
fi

if [ -d "${HOME}/.local/share/go" ]; then
    export GOPATH="${HOME}/.local/share/go"
    export PATH="${GOPATH}/bin:${PATH}"
fi
