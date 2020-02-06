if type "dircolors" > /dev/null; then
    dircolors
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    export LSCOLORS="Exfxcxdxbxegedabagacad"
fi
