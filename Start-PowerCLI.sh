#!/bin/bash

user=$(whoami)
path=$(pwd)

if ! [ "$(id -u)" != "0" ]; then
     echo "This script must be run as root" 1>&2
	      exit 1
  else
      echo "Hey $user, let's rock some PowerCLI!" >&2
      echo "Script path /tmp/scripts it mapped to $path" >&2
      sudo docker run --rm -it --entrypoint='/usr/bin/powershell' -v $path:/tmp/scripts powershell4ing
          exit 1
fi
