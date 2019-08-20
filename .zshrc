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
plugins=(zsh-autosuggestions)

# Command autocorrection off
unsetopt correct_all

# Oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Includes
source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh

# Quicker NVM
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  alias nvm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && nvm'
  alias node='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && node'
  alias npm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && npm'
fi
