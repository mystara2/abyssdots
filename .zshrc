# Enable Powerlevel10k instant prompt. Should stay close to the top of ~//.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Paths & Exports
export SCRIPTS="$HOME/scripts"
export PATH="$PATH:$SCRIPTS"
export PATH=$PATH:/home/malissa/.spicetify
export JAVA_HOME=$HOME/java/adoptium/jdk/17
export PATH=$JAVA_HOME/bin:$PATH
export EDITOR=nvim
export GIT_EDITOR=nvim
#export HYPRSHOT_DIR=/home/malissa/Pictures/Screenshots
export HYPRSHOT_DIR="$HOME/Pictures/Screenshots/$(date +%Y)/$(date +%B)"
mkdir -p "$HYPRSHOT_DIR"
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=100000

if [[ $- == *i* ]]; then
    customfetch
fi

# Other Files
source ~/.zshalias
# ZSH prompt

# Keys, import last
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# Shift+Arrow
bindkey "^[[1;2D" backward-word
bindkey "^[[1;2C" forward-word
bindkey "^[[1;2A" forward-word
bindkey "^[[1;2B" backward-word

# Alt+Arrow
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3A" forward-word
bindkey "^[[1;3B" backward-word
# Ctrl+Arrow
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5A" forward-word
bindkey "^[[1;5B" backward-word

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~//.p10k.zsh.
[[ ! -f ~//.p10k.zsh ]] || source ~//.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
