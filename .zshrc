# Paths & Exports
export SCRIPTS="$HOME/scripts"
export PATH="$PATH:$SCRIPTS"
export PATH=$PATH:/home/malissa/.spicetify
export JAVA_HOME=$HOME/java/adoptium/jdk/17
export PATH=$JAVA_HOME/bin:$PATH
export EDITOR=nvim
export GIT_EDITOR=nvim
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

eval "$(starship init zsh)"
source ~/.cache/wal/colors.sh
