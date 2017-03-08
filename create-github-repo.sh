function create-github-repo () {
  name=$1
  private=$2

  if [ -z "$GITHUB_ACCESS_TOKEN" ] ; then
    echo "GITHUB_ACCESS_TOKEN is not defined"
    return 1
  fi
  if [ -z "$name" ] ; then
    echo "name is required"
    return 1
  fi
  if [ -z "$private" ] ; then
    private=false
  else
    private=true
  fi
  echo \{\"name\":\"${name}\",\"private\":${private}\} | curl -X POST -H 'Content-Type: application/json' -H "Authorization: token $GITHUB_ACCESS_TOKEN" -d @- "https://api.github.com/user/repos?access_token=$GITHUB_ACCESS_TOKEN" 

}
