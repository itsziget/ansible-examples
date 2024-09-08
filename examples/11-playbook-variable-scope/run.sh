#!/bin/bash

export ANSIBLE_CACHE_PLUGIN=jsonfile
export ANSIBLE_CACHE_PLUGIN_CONNECTION="/tmp/ansible-cache$(cd "$(dirname "$0")" && pwd)/$(basename "$0")"
export ANSIBLE_PYTHON_INTERPRETER="$(cd "$(dirname "$0")" && pwd)/../../.venv/bin/python"

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml
