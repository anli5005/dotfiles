if type "dircolors" > /dev/null; then
    eval "$(dircolors -b $DOTFILES_DIR/LS_COLORS)"
elif type "gdircolors" > /dev/null; then
    eval "$(gdircolors -b $DOTFILES_DIR/LS_COLORS)"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    export LSCOLORS="Exfxcxdxbxegedabagacad"
    if type "exa" > /dev/null; then
        alias ls='exa'
    else
        alias ls='ls -G'
    fi
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias ls='ls --color=auto'
fi
