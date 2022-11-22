#HISTSIZE=100000000
#SAVEHIST=100000000
##setopt append_history
#setopt inc_append_history
#setopt extended_history
#setopt hist_expire_dups_first
#unsetopt hist_ignore_dups
#setopt hist_ignore_space
#setopt hist_verify
#setopt share_history
#setopt interactivecomments
#export HISTFILE=$HOME/.global_history
#export ANNOTATED_HISTFILE=$HOME/.global_history_annotated
#export HISTORY_IGNORE=""
#
#function zshaddhistory() {
#    print -sr "${1%%$'\n'}"
#    print -r "${1%%$'\n'} ### ${PWD}  ### ${DESK_NAME}" >> $ANNOTATED_HISTFILE
#    fc -p
#}
#
#alias hh='HISTFILE=$HISTFILE hstr'
#
#function hd() {
#    mydir=$(mktemp -d "${TMPDIR:-/tmp/}$(basename $0).XXXXXXXXXXXX")
#	cat ~/.global_history_annotated | grep -i "### ${PWD}" | sed 's/: [^;]*;//g' | sed 's/###[^#]*###[^#]*$//' > $mydir/history.txt
#    HISTFILE=$mydir/history.txt hstr
#    rm -rf $mydir
#}
