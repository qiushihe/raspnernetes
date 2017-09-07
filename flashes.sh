#!/bin/bash

function usage {
  echo "Usage: $0 IMAGE NODE1-NAME NODE2-NAME ... NODEX-NAME"
}

image=$1
shift

if [ -z "$image" ]; then
  usage
  exit
fi

if [ "$#" -le "0" ]; then
  usage
  exit
fi

while (( "$#" )); do
  flash --hostname $1 $image
  shift

  if [ "$#" -gt "0" ]; then
    read -p "Press enter when ready to flash $1 ..."
  fi
done
