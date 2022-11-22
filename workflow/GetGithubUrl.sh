#!/usr/bin/env zsh
repo_name=`./SelectGithub.sh`
gh repo list Aktify --json name,description,url | jq -c ' .[] ' | grep -i "$repo_name" | jq -r '.url'
