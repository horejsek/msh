#!/bin/bash
#
# msh (Michal's Shell)
# Michal Horejsek <horejsekmichal@gmail.com>
# https://github.com/horejsek/msh
#

MSH_BIN=~/.msh/bin

export PATH=$PATH:$MSH_BIN


dir=`dirname $BASH_SOURCE`

. $dir/commands.sh
. $dir/less.sh
. $dir/alias.sh
. $dir/ssh.sh


