#!/bin/bash

git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global color.ui auto

git config --global push.default current

git config --global alias.l 'log --pretty=format:"%Cgreen%h%Creset %ad %C(cyan)%an%Creset - %s%C(red)%d%Creset" --graph --date=short'
git config --global alias.ll 'log --pretty=format:"%Cgreen%h%Creset %ad %C(cyan)%an%Creset - %s%C(red)%d%Creset" --graph --date=short --all'

git config --global alias.branches 'branch -a'
git config --global alias.tags 'tag'
git config --global alias.stashes 'stash list'

git config --global alias.amend 'commit --amend'
git config --global alias.uncommit 'reset --soft HEAD~1'
git config --global alias.unstage 'reset -q HEAD --'
git config --global alias.discard 'checkout --'

# https://github.com/schreifels/git-num
alias gn="git num"
alias ga="git num add"
alias gr="git num reset"
alias gco="git num checkout"
alias gd="git num diff"
alias gds="git num diff --staged"
