
#enables color in the terminal bash shell
export CLICOLOR=1

#sets up the color scheme for list
export LSCOLORS=ExFxCxDxBxegedabagacad

#enables color for iTerm
export TERM=xterm-color

# brew sbin
export PATH="/usr/local/sbin:$PATH"

# nvm
# [[ -s $HOME/.nvm/nvm.sh  ]] && . $HOME/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm" && . "/usr/local/opt/nvm/nvm.sh"

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm"  ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

