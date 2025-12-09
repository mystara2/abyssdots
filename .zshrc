# Paths & Exports
export SCRIPTS="$HOME/scripts"
export PATH="$PATH:$SCRIPTS"
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
    fastfetch
fi

# Other Files
source ~/.zsh/alias
source ~/.zsh/zshkeys
source ~/.zsh/prompt
source ~/.zsh/functions

if [[ -o interactive ]] && [[ -n $DISPLAY || -n $WAYLAND_DISPLAY ]] && [[ -f ~/.cache/wal/colors.sh ]]; then
    source ~/.cache/wal/colors.sh
fi

export PATH=$PATH:/home/melissa/.spicetify
