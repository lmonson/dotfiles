alias ll="ls -lah $@"
alias pbcopy='reattach-to-user-namespace /usr/bin/pbcopy'
export AWS_VAULT_KEYCHAIN_NAME=login
alias aws='aws-vault exec --session-ttl=36h --assume-role-ttl=1h "${AWS_DEFAULT_PROFILE:-default}" -- \aws "$@"'
