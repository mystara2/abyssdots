# Paths & Exports
export SCRIPTS="$HOME/scripts"
export EDITOR=nvim
export GIT_EDITOR=nvim
export HYPRSHOT_DIR="$HOME/Pictures/Screenshots/$(date +%Y)/$(date +%B)"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PATH="$PATH:$SCRIPTS"
export PATH=/home/melissa/gradle/gradle-8.14.3/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/home/melissa/.spicetify

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