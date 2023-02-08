if [[ -d /usr/local/opt ]] || [[ -d /opt/homebrew ]]; then
    if [ "$(uname -m)" = "x86_64" ]; then
        BREW_PATH=/usr/local/opt
    elif [ "$(uname -m)" = "arm64" ]; then
        BREW_PATH=/opt/homebrew
        echo "export PATH=\"$BREW_PATH/bin:$PATH\""
    fi
    GNUBIN=$(find -L $BREW_PATH -type d -name gnubin | paste -sd':' -)
    GNUMAN=$(find -L $BREW_PATH -type d -name gnuman | paste -sd':' -)
fi

[ ! -z "$GNUBIN" ] && echo "export PATH=\"$GNUBIN:\$PATH\""
[ ! -z "$GNUMAN" ] && echo "export MANPATH=\"$GNUMAN:\$MANPATH\""

true
