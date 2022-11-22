## Tool specific setup that should be moved to it's own dotfiles file
eval "$(mcfly init zsh)"
if [[ "$(defaults read -g AppleInterfaceStyle 2&>/dev/null)" != "Dark" ]]; then
    export MCFLY_LIGHT=TRUE
fi
export MCFLY_KEY_SCHEME=vim
export MCFLY_FUZZY=2
export MCFLY_RESULTS=10
#export MCFLY_INTERFACE_VIEW=BOTTOM
#export MCFLY_DISABLE_MENU=TRUE
#export MCFLY_RESULTS_SORT=LAST_RUN