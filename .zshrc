# .zshrc
alias tmux="TERM=screen-256color-bce tmux"
alias npm-exec='PATH=$(npm bin):$PATH'
alias dog="./watch.sh './*py' python tester.py"
alias deb="npm-exec nodemon --inspect index.js"
alias ls='ls --color=auto'
alias xup="xrdb ~/.Xresources"
alias on="xrandr --output eDP1 --auto"
alias off="xrandr --output eDP1 --off"
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

PATH=$PATH:~/.cabal/bin
PATH=$PATH:.cabal-sandbox/bin
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

autoload -U compinit
compinit
fpath=(/path/to/timetrap-1.x.y/gem/completions/zsh $fpath)

