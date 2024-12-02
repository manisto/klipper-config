#!/bin/bash

if [ -z "$1" ]
then
    echo 'You must specify the config to init, like this:'
    echo '  ./init.sh v2.4'
    exit 1
fi

# $1 - configuration name (eg. v2.4)
# $2 - file to process (eg. printer.cfg)
function init_file() {
    if [ -f "$2" ]; then
        if [ -L "$2" ]; then
            echo "$2 already linked, skipping"
        else
            echo "Transferring and linking contents of $2"
            mv "$2" "./$1/$2"
            ln -s "./$1/$2"
        fi
    else
        echo "Linking $2"
        ln -s "./$1/$2"
    fi
}

init_file $1 crowsnest.conf
init_file $1 moonraker.conf
init_file $1 printer.cfg
