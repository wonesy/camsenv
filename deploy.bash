#!/bin/bash
VIMDIR=vimeniv
SHDIR=shdir
GITDIR=gitdir

#
# Vim Environment
#
mkdir -p ${HOME}/.vim
cp ${VIMDIR}/.vimrc ${HOME}
cp -r ${VIMDIR}/colors ${HOME}/.vim

VIMBUNDLE=${HOME}/.vim/bundle/
if [[ ! -d ${VIMBUNDLE}/vundle ]]; then
    mkdir -p ${VIMBUNDLE}
    git clone https://github.com/gmarik/vundle.git ${VIMBUNDLE}
fi

vim +PluginInstall +qall

#
# Bash/Zsh Environment
#
cp ${SHDIR}/.bash_profile ${HOME}
cp ${SHDIR}/.zshrc ${HOME}
cp ${SHDIR}/.zprofile ${HOME}

OHMY=${HOME}/.oh-my-zsh
if [[ ! -d ${OHMY} ]]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ${HOME}
fi

cp ${SHDIR}/themes/steeef.zsh-theme ${SHDIR}

#
# Git Environment
#
cp ${GITDIR}/.gitignore ${HOME}
cp ${GITDIR}/.gitconfig ${HOME}
