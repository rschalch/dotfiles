#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# source aliases
if [ -f $HOME/.zsh_aliases ]
then
  . $HOME/.zsh_aliases
fi

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/www
source /usr/local/bin/virtualenvwrapper.sh

# Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Go
export GOPATH=$HOME/www/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/www/go/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# source nvm
# source ~/.nvm/nvm.sh
