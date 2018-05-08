#!/bin/bash
VIMDIR=vimenv
SHDIR=shdir
GITDIR=gitdir

#
# Vim Environment
#
mkdir -p ${HOME}/.vim
cp ${VIMDIR}/.vimrc ${HOME}
cp -r ${VIMDIR}/.vim/colors ${HOME}/.vim

VIMBUNDLE=${HOME}/.vim/bundle/
if [[ ! -d ${VIMBUNDLE} ]]; then
    mkdir -p ${VIMBUNDLE}
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

#
# Bash/Zsh Environment
#
cp ${SHDIR}/.zprofile ${HOME}

OHMY=${HOME}/.oh-my-zsh
if [[ ! -d ${OHMY} ]]; then
    sudo apt-get install curl zsh
    sudo chsh -s $(which zsh)
    curl -L http://install.ohmyz.sh | sh
fi

cp ${SHDIR}/themes/steeef.zsh-theme ${SHDIR}

#
# Git Environment
#
cp ${GITDIR}/.gitignore ${HOME}
cp ${GITDIR}/.gitconfig ${HOME}
