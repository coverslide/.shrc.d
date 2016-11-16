if [ "$NVM_HOME" = "" ] ; then
  export NVM_HOME="$HOME/.nvm"
fi
if [ -d "$NVM_HOME" ] ; then
  source "$NVM_HOME/nvm.sh"
fi
