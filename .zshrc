# .zshrc
alias tmux="TERM=screen-256color-bce tmux"
alias npm-exec='PATH=$(npm bin):$PATH'
alias dog="./watch.sh ./ node tester.js"
alias dogpy="./watch.sh ./ python tester.py"
alias deb="npm-exec nodemon --inspect index.js"
alias ls='ls --color=auto'
alias xup="xrdb ~/.Xresources"

PROMPT="%~$ "
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

#show current directory rather than user
#export PS1="[%* - %D] %d %% "
export PYTHONPATH=$PYTHONPATH:/home/praveen/workspace/datastructure

source /usr/share/nvm/init-nvm.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
