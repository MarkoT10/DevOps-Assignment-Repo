pwd#!/bin/bash

set -o errexit
set -o nounset

if [ $# -eq 0 ]; then
    echo "Provide child process."
    exit 1
fi

child_process=$1

echo "Enter the password:"
read -s PASSWORD

echo "${PASSWORD}" | gpg --batch --yes --passphrase-fd 0 -d env.enc > env

(
  set -a
  source ./env
  set +a

  python3 ${child_process}
)

rm env

