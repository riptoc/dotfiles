#################################################
## Main zshrc file. Note: reliant on oh-my-zsh ##
#################################################

# Path to oh-my-zsh install
export ZSH="$HOME/.oh-my-zsh"

# Custom theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Powerlevel10k Prompt
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Plugins
plugins=(git zsh-autosuggestions)

# Command autocorrection off
unsetopt correct_all

# Oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Includes
source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh
