#!/bin/bash

export ANSIBLE_COMMAND_WARNINGS=true
export ANSIBLE_BECOME=true

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml
