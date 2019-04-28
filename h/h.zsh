#!/usr/bin/env bash

h_envpath() {
    H_PATH="$HOME/.h/scripts/${PWD:1}"
}

h_envfile() {
    h_envpath
    H_ENVIRONMENT=$H_PATH/environment.txt
    H_HISTORY=$H_PATH/history.txt
    H_GLOBAL=$HOME/.global_history

    H_PRIMARY=$H_GLOBAL
    H_SECONDARY=$H_HISTORY
}

h_envcreate() {
    if [[ -e $H_ENVIRONMENT ]]
    then
        echo "already exists"
    else
        mkdir -p $H_PATH
        echo "" > $H_ENVIRONMENT
        echo "" > $H_HISTORY
        vim $H_ENVIRONMENT
    fi
}

h_history_hook() {
  # respect hist_ignore_space
  if [[ -o hist_ignore_space ]] && [[ "$1" == \ * ]]; then
      true
  else
      # Save to global
      print -Sr -- "${1%%$'\n'}"

      # Save to local history
      if [[ -e $H_SECONDARY ]]
      then
        fc -p $H_SECONDARY
      fi
  fi
}

h_swap() {
  if [[ -e $H_SECONDARY ]]
  then
    H_PRIMARY=$H_SECONDARY
    H_SECONDARY=$HISTFILE
    export HISTFILE=$H_PRIMARY
    echo "History changed to $HISTFILE"
  fi
}
h_envread() {
    if [[ -e $H_ENVIRONMENT ]]
    then
        echo "Sourcing file $H_ENVIRONMENT"
        . $H_ENVIRONMENT
        if [[ -e $H_HISTORY ]]
        then
          add-zsh-hook -d zshaddhistory h_history_hook
          add-zsh-hook zshaddhistory h_history_hook
          echo "History is stored in $H_HISTORY"
        fi
    else
        echo "Enviroment for this directory does not yet exist."
    fi
}

h_envupdate() {
    if [[ -e $H_ENVIRONMENT ]]
    then
        charm $H_ENVIRONMENT
    else
        echo "Enviroment for this directory does not yet exist."
    fi
}

h_envdelete() {
    if [[ -e $H_ENVIRONMENT ]]
    then
        rm -rf $H_ENVIRONMENT
        rm -rf $H_PATH
    fi
}


h_histedit() {
    if [[ -e $H_HISTORY ]]
    then
        charm $H_HISTORY
    else
        echo "There is no history file $H_HISTORY"
    fi
}

h_histsave() {
    if [[ -e $H_ENVIRONMENT ]]
    then
        fc -AI $H_HISTORY
    fi
}

h_histlist() {
    if [[ -e $H_HISTORY ]]
    then
        less $H_HISTORY
    else
        echo "There is no history file $H_HISTORY"
    fi
}

h_notebooks() {
    if [[ -e $H_PATH ]]
    then
        mkdir -p $H_PATH/notebooks
        jupyter notebook $H_PATH/notebooks
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

    if [[ "$1" == "histlist" ]]
    then
        h_histlist
        return
    fi

    if [[ "$1" == "notebook" ]]
    then
        h_notebooks
        return
    fi

    echo "Usage: h (create|edit|delete|histedit|histlist|histsave|load|notebook)"

}





