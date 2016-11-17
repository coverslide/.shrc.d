if [ -n "$ANDROID_HOME" ] && [ -d "$ANDROID_HOME" ];then
  PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
fi
