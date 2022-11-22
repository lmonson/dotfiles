#!/usr/bin/env zsh
gh repo list Aktify --json name,description,url | jq -r '.[] | .name + (.name | (" " * (50 - length))) + .description' | fzf | cut -f1 -d' '
