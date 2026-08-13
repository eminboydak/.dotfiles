if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    exec startx > $HOME/.Xoutput
fi

# Use the systemd-managed ssh-agent (user service ssh-agent.service).
# Set once here so the login shell, the X session (startx), i3, and all
# terminals inherit it. Run `ssh-add` once per session to load keys.
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Created by `pipx` on 2026-05-14 13:32:35
export PATH="$PATH:$HOME/.local/bin"
