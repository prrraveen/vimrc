#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias xup="xrdb ~/.Xresources"

PS1='[\u@\h \W]\$ '
export XENVIRONMENT="${HOME}/.Xresources"
