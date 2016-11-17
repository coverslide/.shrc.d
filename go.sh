if [ -n "$GOPATH" ] && [ -d "$GOPATH" ] ; then
  export GOPATH
  export PATH=$PATH:$GOPATH/bin
fi
