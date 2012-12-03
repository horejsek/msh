#!/bin/bash
#
# msh (Michal's Shell)
# Michal Horejsek <horejsekmichal@gmail.com>
# https://github.com/horejsek/msh
#

git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global color.ui auto

git config --global alias.plog 'log --pretty=format:"%Cgreen%h%Creset %ad %C(cyan)%an%Creset - %s%C(red)%d%Creset" --graph --date=short'

