#!/bin/bash

export ANSIBLE_CACHE_PLUGIN=jsonfile
export ANSIBLE_CACHE_PLUGIN_CONNECTION="/tmp/ansible-cache$(cd "$(dirname "$0")" && pwd)/$(basename "$0")"

# Just for testing
# Do not remove the cache before each run in production
if [[ -d "${ANSIBLE_CACHE_PLUGIN_CONNECTION}" ]]; then
  rm -rf "${ANSIBLE_CACHE_PLUGIN_CONNECTION}"
fi

ansible-playbook \
  playbook-cache-fact.yml \
  --inventory inventory/default/inventory.yml

ansible-playbook \
    playbook.yml \
    --inventory inventory/default/inventory.yml \
    --extra-vars 'location="22. extra vars"' \
    < <(echo)
