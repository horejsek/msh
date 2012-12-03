#!/bin/bash
#
# msh (Michal's Shell)
# Michal Horejsek <horejsekmichal@gmail.com>
# https://github.com/horejsek/msh
#

dir=`dirname $BASH_SOURCE`

. $dir/commands.sh
. $dir/less.sh
. $dir/alias.sh
. $dir/ssh.sh
. $dir/git.sh


ROOT_UID=0

USER_COLOR='\[\e[0;34m\]'
HISTORY_COLOR='\[\e[0;33m\]'
DIR_COLOR='\[\e[0;32m\]'
GIT_COLOR='\[\e[1;35m\]'
PROMPT_COLOR='\[\e[1;34m\]'
COLOR_RESET='\[\e[0m\]'
if [ ${UID} -eq ${ROOT_UID} ]; then
	PROMPT_USER_COLOR='1;31m'
    PROMPT_COLOR='1;31m'
fi

prompt_command() {
    export PS1="[${USER_COLOR}\u@\h${COLOR_RESET}] \t ${HISTORY_COLOR}\! ${DIR_COLOR}\w\n${GIT_COLOR}$(getgitbranch)${PROMPT_COLOR}\$${COLOR_RESET} "
}
export PROMPT_COMMAND=prompt_command

export HISTTIMEFORMAT="%d/%m/%y %T "

MSH_BIN=~/.msh/bin
export PATH=$PATH:$MSH_BIN

export PYTHONSTARTUP=~/.msh/startup.py

HISTSIZE=1000000

