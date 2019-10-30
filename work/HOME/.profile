export EMAIL="peter.zueger@feller.ch"
export NAME="Peter Züger"
export MPY_BAUDRATE=460800

if [ -d "/usr/lib/ccache/bin" ]; then
  export PATH="/usr/lib/ccache/bin:${PATH}"
fi
