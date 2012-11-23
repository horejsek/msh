#!/bin/bash
#
# msh (Michal's Shell)
# Michal Horejsek <horejsekmichal@gmail.com>
# https://github.com/horejsek/msh
#

ROOT_UID=0

PROMPT_USER_COLOR='0;34m'
PROMPT_HISTORY_COLOR='0;33m'
PROMPT_DIR_COLOR='0;32m'
PROMPT_COLOR='1;34m'
if [ ${UID} -eq ${ROOT_UID} ]; then
	PROMPT_USER_COLOR='1;31m'
    PROMPT_COLOR='1;31m'
fi

export PS1="[\[\e[${PROMPT_USER_COLOR}\]\u@\h\[\e[0m\]] \t \[\e[${PROMPT_HISTORY_COLOR}\]\!\[\e[0m\] \[\e[${PROMPT_DIR_COLOR}\]\w\[\e[0m\]\n\[\e[${PROMPT_COLOR}\]\$\[\e[0m\] "

export HISTTIMEFORMAT="%d/%m/%y %T "

MSH_BIN=~/.msh/bin
export PATH=$PATH:$MSH_BIN

export PYTHONSTARTUP=~/.msh/startup.py



dir=`dirname $BASH_SOURCE`

. $dir/commands.sh
. $dir/less.sh
. $dir/alias.sh
. $dir/ssh.sh
. $dir/git.sh

HISTSIZE=1000000

