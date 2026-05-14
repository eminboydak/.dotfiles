if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    exec startx > $HOME/.Xoutput
fi

# Created by `pipx` on 2026-05-14 13:32:35
export PATH="$PATH:/home/emin/.local/bin"
