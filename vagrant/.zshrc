export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kolo"
plugins=()
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8

export WORKON_HOME=/vagrant/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=`which python3.5`
export PROJECT_HOME=/vagrant
export VIRTUALENVWRAPPER_SCRIPT=$HOME/.local/bin/virtualenvwrapper.sh
source $HOME/.local/bin/virtualenvwrapper_lazy.sh
