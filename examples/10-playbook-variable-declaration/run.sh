#!/bin/bash

export ANSIBLE_CACHE_PLUGIN=jsonfile
export ANSIBLE_CACHE_PLUGIN_CONNECTION="/tmp/ansible-cache$(cd "$(dirname "$0")" && pwd)/$(basename "$0")"

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml
