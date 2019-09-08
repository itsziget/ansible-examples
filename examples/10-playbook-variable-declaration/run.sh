#!/bin/bash

export ANSIBLE_CACHE_PLUGIN=jsonfile
export ANSIBLE_CACHE_PLUGIN_CONNECTION=/tmp/ansible-cache.json

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml
