function docker_env () {
  machine_name="$1"
  if [ -z "$machine_name" ] ; then
    machine_name="default"
  fi
  export DOCKER_HOST="tcp://127.0.0.1:2376"
  export DOCKER_TLS_VERIFY=0
  export DOCKER_CERT_PATH="${HOME}/.docker/machine/machines/${machine_name}"
  export DOCKER_MACHINE_NAME="${machine_name}"
}

function docker_destroy () {
  machine_name="$1"
  if [ -z "$machine_name" ] ; then
    machine_name="default"
  fi
  docker-machine rm ${machine_name} || return 1
}

function docker_create () {
  machine_name="$1"
  driver="$2"
  if [ -z "$machine_name" ] ; then
    machine_name="default"
  fi
  if [ -z "$driver" ] ; then
    driver="virtualbox"
  fi

  docker-machine create --driver "${driver}" "${machine_name}"
  docker_ports "$machine_name"
}

function docker_ports () {
  machine_name="$1"
  if [ -z "$machine_name" ] ; then
    machine_name="default"
  fi
  docker-machine stop "${machine_name}" || return 1
  VBoxManage modifyvm "${machine_name}" --natpf1 "docker,tcp,,2376,,2376" || return 1
  docker-machine start "${machine_name}" || return 1
}