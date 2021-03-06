#!/bin/bash

dir=`dirname $BASH_SOURCE`

. $dir/alias.sh
. $dir/commands.sh
. $dir/git.sh


ROOT_UID=0

prompt_command() {
    USER_COLOR='\[\e[0;34m\]'
    HISTORY_COLOR='\[\e[0;33m\]'
    DIR_COLOR='\[\e[0;32m\]'
    GIT_COLOR='\[\e[0;35m\]'
    PROMPT_COLOR='\[\e[1;34m\]'
    COLOR_RESET='\[\e[0m\]'
    PROMPT='$'

    if ! isgitclean; then
        GIT_COLOR='\[\e[1;35m\]'
    fi
    if [ ${UID} -eq ${ROOT_UID} ]; then
	    USER_COLOR='\[\e[1;31m\]'
        PROMPT_COLOR='\[\e[1;31m\]'
        PROMPT='#'
    fi

    export PS1="[${USER_COLOR}\u@\h${COLOR_RESET}] \t ${HISTORY_COLOR}\! ${DIR_COLOR}\w\n${GIT_COLOR}$(getgitbranch)${PROMPT_COLOR}${PROMPT}${COLOR_RESET} "
}
export PROMPT_COMMAND=prompt_command


export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=1000000


MSH_BIN=~/.msh/bin
export PATH=$PATH:$MSH_BIN


export PYTHONSTARTUP=~/.msh/startup.py
