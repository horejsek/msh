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

pip install -U `cat install/python-packages`

