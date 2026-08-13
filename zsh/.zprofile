if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    exec startx > $HOME/.Xoutput
fi

# Homebrew environment (macOS & Linux)
if [ -f /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv zsh)"
elif [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
fi

# Use systemd-managed ssh-agent on Linux if socket exists
if [ -n "$XDG_RUNTIME_DIR" ] && [ -S "$XDG_RUNTIME_DIR/ssh-agent.socket" ]; then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

# Created by `pipx` on 2026-05-14 13:32:35
export PATH="$PATH:$HOME/.local/bin"
