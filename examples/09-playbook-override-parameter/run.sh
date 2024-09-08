#!/bin/bash

export ANSIBLE_PYTHON_INTERPRETER="$(cd "$(dirname "$0")" && pwd)/../../.venv/bin/python"

echo 'Without --become'

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml

echo 'With --become'

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml \
    --become

echo 'With extra variable ansible_become=true'

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml \
    --extra-vars 'ansible_become=true'