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

dir=`dirname $BASH_SOURCE`
cd $dir

gitrepos=`cat github-repos`

if [ -e tmp ]; then
	rm -rf tmp
fi
mkdir tmp && cd tmp

for gitrepo in $gitrepos; do
	git clone $gitrepo
done

for repo in `ls -1 .`; do
	cd $repo
	python setup.py install
	cd ..
done

cd ..

rm -rf tmp

