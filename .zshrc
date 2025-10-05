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
source ~/.zsh/.zshalias
source ~/.zsh/.zshkeys
source ~/.zsh/.prompt

if [[ -o interactive ]] && [[ -n $DISPLAY || -n $WAYLAND_DISPLAY ]] && [[ -f ~/.cache/wal/colors.sh ]]; then
    source ~/.cache/wal/colors.sh
fi
