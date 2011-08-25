#!/bin/bash
#
# msh (Michal's Shell)
# Michal Horejsek <horejsekmichal@gmail.com>
# https://github.com/horejsek/msh
#

ROOT_UID=0

PROMPT_COLOR='1;34m'
if [ ${UID} -eq ${ROOT_UID} ]; then
	PROMPT_COLOR='1;31m'
fi

export PS1="[\u@\h \[\e[${PROMPT_COLOR}\]\W\[\e[0m\]]\$ "

export HISTTIMEFORMAT="%d/%m/%y %T "

MSH_BIN=~/.msh/bin
export PATH=$PATH:$MSH_BIN



dir=`dirname $BASH_SOURCE`

. $dir/commands.sh
. $dir/less.sh
. $dir/alias.sh
. $dir/ssh.sh
. $dir/git.sh


