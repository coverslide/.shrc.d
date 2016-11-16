function create-gogs-repo () {
  name=$1
  public=$2

  if [ -z "$GOGS_URL" ] ; then
    echo "GOGS_URL is not defined"
    return 1
  fi
  if [ -z "$GOGS_ACCESS_TOKEN" ] ; then
    echo "GOGS_ACCESS_TOKEN is not defined"
    return 1
  fi
  if [ -z "$name" ] ; then
    echo "name is required"
    return 1
  fi
  if [ -z "$public" ] ; then
    private=true
  else
    private=false
  fi
  echo \{\"name\":\"${name}\",\"private\":${private}\} | curl -X POST -H 'Content-Type: application/json' -d @- "$GOGS_URL"/api/v1/user/repos\?token\="$GOGS_ACCESS_TOKEN" 

}
