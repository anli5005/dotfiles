#! /bin/zsh

alias ds="dirs -v"
alias oa="open -a"
alias oops="sudo !!"
alias next='npx next'
alias ql='quick-look'
alias kj='kill %'
alias sl='sl || kill %'

hash -d zsh="$DOTFILES_ROOT/dotfiles/zsh"
hash -d doc="$DOTFILES_ROOT/Documents"
hash -d down="$DOTFILES_ROOT/Downloads"
hash -d mov="$DOTFILES_ROOT/Movies"
hash -d desk="$DOTFILES_ROOT/Desktop"