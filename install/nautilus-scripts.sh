#!/bin/bash
#
# msh (Michal's Shell)
# Michal Horejsek <horejsekmichal@gmail.com>
# https://github.com/horejsek/msh
#

NAUTILUS_SCRIPTS_DIR=~/.gnome2/nautilus-scripts

dir=`dirname $BASH_SOURCE`
cd $dir

if [ -e tmp ]; then
	rm -rf tmp
fi
mkdir tmp && cd tmp

git clone git://github.com/horejsek/nautilus-scripts.git

IFS=$'\n'

cp `find nautilus-scripts/ -type f | grep -v ".git"` $NAUTILUS_SCRIPTS_DIR
chmod 777 $NAUTILUS_SCRIPTS_DIR/*

cd ..

rm -rf tmp

