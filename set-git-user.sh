function set-git-user () {
  if [ -z "$GIT_USER_NAME" ] ; then
    echo "GIT_USER_NAME is not defined"
    return 1
  fi
  if [ -z "$GIT_USER_EMAIL" ] ; then
    echo "GIT_USER_EMAIL is not defined"
    return 1
  fi
  git config user.name "$GIT_USER_NAME"
  git config user.email "$GIT_USER_EMAIL"
}
