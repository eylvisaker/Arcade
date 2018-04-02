#!/bin/bash

mkdir -p vmguest

if [[ $1 == '-d' ]] ; then
  vagrant destroy -f
fi

vagrant up
ec=$?

if [ ! $ec -eq 0 ]; then
  echo "Error provisioning virtual machine with vagrant."
  exit $ec
fi

# Hack to avoid key changed error
ssh-keygen -R `tail -n 1 inventory`

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i inventory ../../src/arcade.yml

