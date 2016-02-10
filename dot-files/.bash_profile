#!/bin/bash

source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# bash vim mode
set -o vi

export PS1='\[\e[36;1m\]\u@\[\e[32;1m\]\h:\W$(__git_ps1 " (%s)")\$ \[\e[0m\]'

alias vi="vim -p"
alias ll='ls -lhaG'
alias f='find . -name'

alias gw='./gradlew'
alias gw='./gradlew'
alias gd='./gradlew --daemon --parallel --configure-on-demand --info'
alias gb='./gradlew --daemon --parallel --configure-on-demand --info build'

alias gs='git st'
alias gh='git hlog'
function prpush() {
    BRANCH=`git describe --contains --all HEAD`
    git push --set-upstream origin $BRANCH
}

PATH=$PATH:$HOME/bin
export PATH

unset SSH_ASKPASS

skill ()
{ 
  kill `ps ax | grep $1 | grep -v grep | awk '{print $1}'`
}

