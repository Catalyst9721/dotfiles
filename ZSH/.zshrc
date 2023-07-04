#############################################################
# powerlevel10k
#############################################################

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi





# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

HIST_STAMPS="dd/mm/yyyy"

# COMPLETION_WAITING_DOTS="true" Makes prompot a bit glitchy/weird

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)



# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi



#############################################################
# Aliases
#############################################################

alias c ="clear"
alias nv="nvim"

source $ZSH/oh-my-zsh.sh



[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
