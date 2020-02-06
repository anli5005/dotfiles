if type "dircolors" > /dev/null; then
    eval "$(dircolors -b)"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    export LSCOLORS="Exfxcxdxbxegedabagacad"
    if type "exa" > /dev/null; then
        alias ls='exa'
    else
        alias ls='ls -G'
    end
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias ls='ls --color=auto'
fi
