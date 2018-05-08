alias up='cd .. && ls'
alias c='clear'
alias hist='history'

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
