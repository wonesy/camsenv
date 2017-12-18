#!/bin/bash
VIMDIR=vimeniv
SHDIR=shdir
GITDIR=gitdir

# Vim Environment
mkdir -p $VIMDIR
cp -f ~/.vimrc $VIMDIR
cp -fr ~/.vim/colors $VIMDIR

# Bash/Zsh Environment
mkdir -p $SHDIR
cp -f ~/.bash_profile $SHDIR
cp -f ~/.zshrc $SHDIR
cp -f ~/.zprofile $SHDIR
cp -f ~/.oh-my-zsh/themes/steeef.zsh-theme $SHDIR

# Git Encironment
mkdir -p $GITDIR
cp -f ~/.gitignore $GITDIR
cp -f ~/.gitconfig $GITDIR

