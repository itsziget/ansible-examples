#!/bin/bash

ansible \
    remotes \
    --inventory inventory.yml \
    --module-name raw \
    --args 'ls -la /' \
    --private-key '../../.vagrant/machines/default/virtualbox/private_key'