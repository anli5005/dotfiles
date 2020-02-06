if type "dircolors" > /dev/null; then
    eval "$(dircolors -b)"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    export LSCOLORS="Exfxcxdxbxegedabagacad"
fi
