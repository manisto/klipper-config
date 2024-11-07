#!/bin/bash

if [ -z "$1" ]
then
    echo 'You must specify the config to init, like this:'
    echo '  ./init.sh v2.4'
    exit 1
fi

function init_file() {
    if [ -f "$2" ]; then
        if [ ! -L "$2" ]; then
            cp "$2" "./$1/$2"
        fi

        rm "$2"
    fi

    ln -s "./$1/$2"
}

init_file $1 crowsnest.conf
init_file $1 moonraker.conf
init_file $1 printer.cfg
