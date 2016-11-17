if [ "$CHRUBY_ROOT" = "" ] ; then
  CHRUBY_ROOT=/usr/local/share/chruby
fi
if [ -d "$CHRUBY_ROOT" ] ; then
  source "$CHRUBY_ROOT"/chruby.sh
  source "$CHRUBY_ROOT"/auto.sh
fi
