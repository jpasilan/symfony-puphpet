#!/bin/bash

# Check `vagrant` is member of `www-data` group
id vagrant | grep www-data;

if [ ! -z $? ]; then
    usermod -g www-data vagrant
fi
