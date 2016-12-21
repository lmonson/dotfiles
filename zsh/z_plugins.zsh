
export EDITOR='subl'

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# ---------------------------------------------------------------------
# Visual prompt style
# ---------------------------------------------------------------------
prompt walters


# ---------------------------- ALIASES --------------------------------------------------------
#                                                                                             |
#                                                                                             |
#                                                                                             |
#                                                                                             v
alias tm=tmux
alias tmc="tmux list-commands"
alias tml="tmux list-sessions"
alias pbcopy='reattach-to-user-namespace /usr/bin/pbcopy'
#                                                                                             ^
#                                                                                             |
#                                                                                             |
#                                                                                             |
# ---------------------------- ALIASES --------------------------------------------------------

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
