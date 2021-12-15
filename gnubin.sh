[ -d /usr/local/opt ] && {
    GNUBIN=$(find -L /usr/local/opt -type d -name gnubin | paste -sd':' -)
    GNUMAN=$(find -L /usr/local/opt -type d -name gnuman | paste -sd':' -)
}
[ ! -z "$GNUBIN" ] && echo "export PATH=\"$GNUBIN:\$PATH\""
[ ! -z "$GNUMAN" ] && echo "export MANPATH=\"$GNUMAN:\$MANPATH\""

true
