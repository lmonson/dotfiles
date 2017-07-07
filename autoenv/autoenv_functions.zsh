#!/usr/bin/env bash

default_autoenv() {
    mypath=`dirname $1`
    echo "mypath is $mypath"
    if [ -f $mypath/.zsh_history ]; then
        echo "PUSH history"
        fc -p $mypath/.zsh_history
        unsetopt EXTENDED_HISTORY
        export LOCALHIST=true
    else
        unset LOCALHIST
    fi


}

default_autoenv_leave() {
    if [[ LOCALHIST ]]; then
        echo "POP history"
        fc -P
    fi
}

