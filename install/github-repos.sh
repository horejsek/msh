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

## PREPARE

dir=`dirname $BASH_SOURCE`
cd $dir

gitrepos_python=`cat github-repos-python`
gitrepos_python3=`cat github-repos-python3`

if [ -e tmp ]; then
	rm -rf tmp
fi
mkdir tmp && cd tmp

## INSTALL REPOS FOR PYTHON

IFS=$'\n'
for gitrepo in $gitrepos_python; do
	IFS=$'\n '
	git clone $gitrepo
done

for repo in `ls -1 .`; do
	cd $repo
	python setup.py install
	cd ..
done

rm -rf *

## INSTALL REPOS FOR PYTHON 3

IFS=$'\n'
for gitrepo in $gitrepos_python3; do
	IFS=$'\n '
	git clone $gitrepo
done

for repo in `ls -1 .`; do
	cd $repo
	python3 setup.py install
	cd ..
done

## CLEAN

cd ..

rm -rf tmp

