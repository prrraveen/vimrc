# If not running interactively, don't do anything
[[ $- != *i* ]] && return


export XENVIRONMENT="${HOME}/.Xresources"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
