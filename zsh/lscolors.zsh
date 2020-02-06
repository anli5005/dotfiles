if type "dircolors" > /dev/null; then
    eval "$(dircolors -b)"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    export LSCOLORS="Exfxcxdxbxegedabagacad"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    export LS_OPTIONS='--color=auto'
fi
