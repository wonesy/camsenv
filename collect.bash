#!/bin/bash
VIMDIR=vimenv
SHDIR=shdir
GITDIR=gitdir

# Vim Environment
mkdir -p $VIMDIR
cp -f ~/.vimrc $VIMDIR
cp -fr ~/.vim/colors $VIMDIR

# Bash/Zsh Environment
mkdir -p $SHDIR
cp -f ~/.zprofile $SHDIR
cp -f ~/.oh-my-zsh/themes/steeef.zsh-theme $SHDIR

# Git Environment
mkdir -p $GITDIR

if [[ -a ~/.gitignore ]]; then
    cp -f ~/.gitignore $GITDIR
fi

if [[ -a ~/.gitconfig ]]; then
    cp -f ~/.gitconfig $GITDIR
fi

