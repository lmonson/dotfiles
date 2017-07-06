# ---------------------- SHELL PLUGINS --------------------------------------------------------
#                                                                                             |
#                                                                                             |
#                                                                                             |
#                                                                                             v

antigen use prezto

# ---------------------------------------------------------------------
# PREZTO modules that should be loaded first
# antigen bundle sorin-ionescu/prezto modules/syntax-highlighting
# ---------------------------------------------------------------------
antigen bundle sorin-ionescu/prezto modules/prompt
antigen bundle sorin-ionescu/prezto modules/helper

# ---------------------------------------------------------------------
# OH-my-zshell based stuff
# ---------------------------------------------------------------------
# antigen bundle zsh-autoenv

# ---------------------------------------------------------------------
# Would normally load this plugin, but I don't like the default setting to be local.
# There is nothing built into the plugin to define the default, so I changed it in src
# ---------------------------------------------------------------------
#source ~/.per-directory-history.zsh
#antigen bundle per-directory-history

# I aliased "st" to be the sublime executable so don't really nead this plugin
#antigen bundle sublime

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle autojump
antigen bundle Tarrasch/zsh-autoenv

# antigen bundle history


# prezto based stuff
# antigen bundle sorin-ionescu/prezto modules/git
# antigen bundle sorin-ionescu/prezto modules/command-not-found
# antigen bundle sorin-ionescu/prezto modules/tmux
# zstyle ':prezto:module:tmux:auto-start' local 'yes'
# set-option -g 'destroy-unattached' 'on'

antigen apply

# Annoying bug from antigen use prezto -- it sets ZDOTDIR to the wrong thing and tmux is then broken
ZDOTDIR=$HOME

# ---------------------------------------------------------------------
# Key bindings for zsh-history-substring-search
# ---------------------------------------------------------------------
# zmodload zsh/terminfo
# bindkey "$terminfo[cuu1]" history-substring-search-up
# bindkey "$terminfo[cud1]" history-substring-search-down
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

