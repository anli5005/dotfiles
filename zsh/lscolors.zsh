if [[ "$OSTYPE" == "darwin"* ]]; then
    export LSCOLORS="Exfxcxdxbxegedabagacad"
elif type "dircolors" > /dev/null; then
    export LSCOLORS=$(dircolors)
fi
