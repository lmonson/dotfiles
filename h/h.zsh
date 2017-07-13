#!/usr/bin/env bash

h_envpath() {
    H_PATH="~/.h/scripts/${PWD:1}"
}

h_envfile() {
    h_envpath
    H_FILE=$H_PATH/env.sh
    H_HISTORY=$H_PATH/env.hist
}

h_envcreate() {
    if [[ -e $H_FILE ]]
    then
        echo "already exists"
    else
        mkdir -p $H_PATH
        echo "" > $H_FILE
        echo "" > $H_HISTORY
        mvim $H_FILE
    fi
}

h_envread() {
    if [[ -e $H_FILE ]]
    then
        echo "Sourcing file $H_FILE"
        . $H_FILE
        if [[ -e $H_HISTORY ]]
        then
            echo "History is stored in $H_HISTORY"
            fc -R $H_HISTORY
        fi
    else
        echo "Enviroment for this directory does not yet exist."
    fi
}

h_envupdate() {
    if [[ -e $H_FILE ]]
    then
        mvim $H_FILE
    else
        echo "Enviroment for this directory does not yet exist."
    fi
}

h_envdelete() {
    if [[ -e $H_FILE ]]
    then
        rm -rf $H_FILE
        rm -rf $H_PATH
    fi
}


h_histedit() {
    if [[ -e $H_HISTORY ]]
    then
        mvim $H_HISTORY
    else
        echo "There is no history file $H_HISTORY"
    fi
}

h_histsave() {
    if [[ -e $H_FILE ]]
    then
        fc -W $H_HISTORY
    fi
}

h() {
    h_envfile

    if [[ "$1" = "create" ]]
    then
        h_envcreate
        return 0
    fi

    if [[ "$1" = "load" ]]
    then
        h_envread
        return 0
    fi

    if [[ "$1" = "edit" ]]
    then
        h_envupdate
        return 0
    fi

    if [[ "$1" = "delete" ]]
    then
        h_envdelete
        return 0
    fi

    if [[ "$1" == "histsave" ]]
    then
        h_histsave
        return
    fi

    if [[ "$1" == "histedit" ]]
    then
        h_histedit
        return
    fi

    echo "Usage: h (create|edit|delete|histedit|histsave|load)"

}


