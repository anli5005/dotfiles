if type ghq > /dev/null; then
    GHQ_ROOT=${GHQ_ROOT:-$(ghq root)}
hash -d ghq="$GHQ_ROOT"
hash -d hub="$GHQ_ROOT/github.com"

ghq() {
    if [[ "$1" == "path" ]] then
        command ghq list -p | peco --select-1 --on-cancel error --query "$2"
    elif [[ "$1" == "go" ]] then
        GHQ_PATH_RESULT=$(ghq path "$2")
        if [[ -n $GHQ_PATH_RESULT ]] then
            cd $GHQ_PATH_RESULT
        fi
    elif [[ "$1" == "pushd" ]] then
        GHQ_PATH_RESULT=$(ghq path "$2")
        if [[ -n $GHQ_PATH_RESULT ]] then
            pushd $GHQ_PATH_RESULT
        fi
    elif [[ "$1" == "code" ]] then
        GHQ_PATH_RESULT=$(ghq path "$2")
        if [[ -n $GHQ_PATH_RESULT ]] then
            code $GHQ_PATH_RESULT
        fi
    else
        command ghq $@
    fi
}

alias ghd='ghq go'
alias ghp='ghq pushd'
alias ghv='ghq code'
fi
