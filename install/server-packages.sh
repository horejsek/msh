#!/bin/bash
#
# msh (Michal's Shell)
# Michal Horejsek <horejsekmichal@gmail.com>
# https://github.com/horejsek/msh
#

ROOT_UID=0

if [ ! "$UID" -eq "$ROOT_UID" ]; then
	echo "You must be root!"
	exit 1
fi

apt-get install `cat install/server-packages`

(cd /tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install)

