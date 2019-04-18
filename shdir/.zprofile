alias up='cd .. && ls'
alias c='clear'
alias h='history'
alias vim='vim -p'
alias killgnome='killall -3 gnome-shell'
alias gtl='cs $(git rev-parse --show-toplevel)'
alias fn='find . -name'
alias asearch='apt-cache search'


export EDITOR=vim
export PATH=$PATH:~/tools/genymotion:~/.local/bin:~/.bin

# virtualenvwrapper settings
export WORKON_HOME=~/.venvs
source /home/cam/.local/bin/virtualenvwrapper.sh

# golang settings
export GOPATH=~/code/go
export PATH=$PATH:$GOPATH/bin

function cs() {
    cd $1 && ls
}

function linktorrent() {
    IFS_bak=$IFS
    IFS=$'\n'

    dl=/mnt/torrents/downloads

    results=($(ls ${dl} | grep -i "$1"))

    select item in $results; do
        read "linkname?Enter link name: "
        cmd="ln -sf \"${dl}/${item}\" ./${linkname}"
        echo "${cmd}"
        eval ${cmd}
        return 
    done

    IFS=$IFS_bak
}
