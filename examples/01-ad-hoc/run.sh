#!/bin/bash

ansible --connection local \
    all \
    --inventory local, \
    --module-name raw \
    --args 'ls -la /'