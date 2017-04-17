# .zshrc
alias tmux="TERM=screen-256color-bce tmux"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/praveen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
