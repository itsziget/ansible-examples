#!/bin/bash

echo 'Without --become'

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml

echo 'With --become'

ansible-playbook \
    playbook.yml \
    --inventory inventory.yml \
    --become