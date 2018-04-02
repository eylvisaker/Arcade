#!/bin/bash
#
# This script is to be used to setup a machine to administrate an Arcade box
# This can be used on the destination box if it will self administer.
#

apt-get update
apt-get -y install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get -y install ansible

