#!/bin/bash

# Safety!
alias rm='rm -I --preserve-root'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias ls='ls --color=auto'
alias ll='ls -la'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

alias mkdir='mkdir -pv'

alias grep='grep --color=auto'
alias ack-grep='ack-grep --color'

alias diff='colordiff'

alias less='less -R'

alias df='df -H'

# Continue where it failed before by default.
alias wget='wget -c'

# Give me some long random useful for passwords.
alias somepwd='cat /dev/urandom | tr -dc "a-zA-Z0-9" | fold -w 32 | head -n 1'

# What is running on ports?
alias ports='netstat -tulanp'

alias bp='bpython'
