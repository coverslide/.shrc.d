if [ -n "$ORACLE_HOME" ] && [ -d "$ORACLE_HOME" ] ; then
  export ORACLE_HOME
  PATH="$PATH:$ORACLE_HOME"
  export OCI_DIR=$ORACLE_HOME
fi
