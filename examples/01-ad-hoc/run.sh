#!/bin/bash

ansible \
    all \
    --inventory 127.0.0.1:2222, \
    --module-name raw \
    --args 'ls -la /' \
    --user vagrant \
    --private-key '../../.vagrant/machines/default/virtualbox/private_key'