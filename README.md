# zsh-gnubin

Loads gnubin paths from homebrew into $PATH.  Meant to be used with homebrew on
OSX to load GNU variant command-line utilities.

## Install

### zinit (with z-a-eval annex)

```bash
zinit light NICHOLAS85/z-a-eval
zinit eval'./gnubin.sh' twang817/zsh-gnubin
```

### zinit (vanilla)

```bash
zinit ice atclone'./gnubin.sh > paths.zsh' \
    atpull'%atclone' pick'paths.zsh' nocompile'!' \
zinit light twang817/zsh-gnubin
```
