antigen use prezto

    antigen bundle sorin-ionescu/prezto modules/prompt
    antigen bundle sorin-ionescu/prezto modules/helper

    # ---------------------------------------------------------------------
    # Provides history selection menu
    # ---------------------------------------------------------------------
    antigen bundle zsh-navigation-tools
    bindkey "^R" znt-history-widget
    antigen bundle zsh-users/zsh-autosuggestions
    antigen bundle zsh-users/zsh-history-substring-search
    antigen bundle autojump
    antigen bundle zsh-users/zsh-completions
    antigen apply


    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down

    prompt walters

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

