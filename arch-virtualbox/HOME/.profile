export EMAIL="zueger.peter@icloud.com"
export NAME="Peter Züger"

if [ -d "/usr/lib/ccache/bin" ]; then
    export PATH="/usr/lib/ccache/bin:${PATH}"
fi

export GOPATH="${HOME}/.go"
if [ -d "${HOME}/.go" ]; then
    export PATH="${PATH}:${GOPATH}/bin"
fi
