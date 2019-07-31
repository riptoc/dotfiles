#################################################
## Main zshrc file. Note: reliant on oh-my-zsh ##
#################################################

# Path to oh-my-zsh install
export ZSH="$HOME/.oh-my-zsh"

# Custom theme
ZSH_THEME="fishyrussell" # Currently just symlinked from .dotfiles

# Plugins
plugins=(git zsh-autosuggestions)

# Command autocorrection off
unsetopt correct_all

# Oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Includes
source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh
