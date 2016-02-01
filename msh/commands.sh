#!/bin/bash

getgitbranch() {
    git branch 2> /dev/null | grep "^\*" | cut -c3-
}

isgitclean() {
    test "" = "$(git status -s 2> /dev/null)"
    return $?
}

un () {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2) tar xvjf $1 ;;
            *.tar.gz) tar xvzf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) unrar x $1 ;;
            *.gz) gunzip $1 ;;
            *.tar) tar xvf $1 ;;
            *.tbz2) tar xvjf $1 ;;
            *.tgz) tar xvzf $1 ;;
            *.zip) unzip $1 ;;
            *.Z) uncompress $1 ;;
            *.7z) 7z x $1 ;;
            *) echo "Don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

dir2scp () {
    echo `whoami`@`hostname`:`pwd`
}

portforwarding () {
    ssh -L 8080:localhost:$2 $1
}

