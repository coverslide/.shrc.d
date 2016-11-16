if [ "$ORACLE_HOME" = "" ]; then
  ORACLE_HOME=/opt/oracle/instantclient_11_2
fi
if [ -d "$ORACLE_HOME" ] ; then
  export ORACLE_HOME
  PATH="$PATH:$ORACLE_HOME"
  export PATH
  LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$ORACLE_HOME"
  export LD_LIBRARY_PATH
  if [ $(uname) = "Darwin" ] ; then
    DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$ORACLE_HOME"
    export DYLD_LIBRARY_PATH
  fi

fi
