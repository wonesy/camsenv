#!/bin/bash
VIMDIR=vimenv
SHDIR=shdir
GITDIR=gitdir

#
# Vim Environment
#
mkdir -p ${HOME}/.vim
cp ${VIMDIR}/.vimrc ${HOME}
cp -r ${VIMDIR}/colors ${HOME}/.vim


VIMBUNDLE=${HOME}/.vim/bundle/
if [[ ! -d ${VIMBUNDLE} ]]; then
    mkdir -p ${VIMBUNDLE}
    sudo apt-get install python
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
    ~/.vim/bundle/YouCompleteMe/install.py
fi


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
