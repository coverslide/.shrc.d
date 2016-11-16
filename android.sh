if [ "$ANDROID_HOME" = "" ];then
  ANDROID_HOME=$HOME/misc/android-sdk
fi
if [ -d "$ANDROID_HOME" ];then
  PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
fi
