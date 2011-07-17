#!/bin/bash
#
# msh (Michal's Shell)
# Michal Horejsek <horejsekmichal@gmail.com>
# https://github.com/horejsek/msh
#

dir=`dirname $BASH_SOURCE`
cd $dir

if [ -e tmp ]; then
	rm -rf tmp
fi
mkdir tmp && cd tmp

git clone git://github.com/horejsek/nautilus-scripts.git

IFS=$'\n'

cp `find nautilus-scripts/ -type f | grep -v ".git"` ~/.gnome2/nautilus-scripts

cd ..

rm -rf tmp

