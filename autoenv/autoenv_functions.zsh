#!/usr/bin/env bash

default_autoenv() {

    if [ -f ./.zsh_history ]; then
        echo "PUSH history"
        fc -p $PWD/.zsh_history
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

