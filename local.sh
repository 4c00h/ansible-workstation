#!/bin/bash

source ~/ansible/hacking/env-setup

ARGS="-i inventories/local ${@:1}"
echo "ansible-playbook $ARGS"

ansible-playbook $ARGS --ask-become-pass -vv
