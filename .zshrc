# Paths & Exports
export SCRIPTS="$HOME/scripts"
export PATH="$PATH:$SCRIPTS"
export PATH=/home/melissa/gradle/gradle-8.14.3/bin:$PATH
export EDITOR=nvim
export GIT_EDITOR=nvim
export HYPRSHOT_DIR="$HOME/Pictures/Screenshots/$(date +%Y)/$(date +%B)"
export PATH="$HOME/.local/bin:$PATH"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"


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

# SSH AGENT

#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
#fi
#if [ ! -f "$SSH_AUTH_SOCK" ]; then
#    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
#fi
