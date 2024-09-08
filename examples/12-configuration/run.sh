#!/bin/bash

export ANSIBLE_BECOME=true
export ANSIBLE_PYTHON_INTERPRETER="$(cd "$(dirname "$0")" && pwd)/../../.venv/bin/python"

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml
