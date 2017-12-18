#!/usr/local/bin/zsh

alias c='clear'
alias up='cd .. && ls'

func cs() {
    cd $1 && ls -G
}
