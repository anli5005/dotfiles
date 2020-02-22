autoload -Uz compinit
compinit

# load zgen
source "$DOTFILES_ROOT/.zgen/zgen.zsh"

# oh-my-zsh defaults
zgen oh-my-zsh lib/compfix.zsh
zgen oh-my-zsh lib/clipboard.zsh
zgen oh-my-zsh lib/completion.zsh
zgen oh-my-zsh lib/history.zsh
zgen oh-my-zsh lib/grep.zsh

# dotfiles/zsh
for file in $DOTFILES_ROOT/dotfiles/zsh/pre/*.zsh; do
    zgen load "$file"
done

# Theme
zgen load romkatv/powerlevel10k powerlevel10k.zsh-theme

# Nice-to-have
for file in $DOTFILES_ROOT/dotfiles/zsh/*.zsh; do
    zgen load "$file"
done

zgen load romkatv/zsh-defer
zgen load Tarrasch/zsh-autoenv
zgen oh-my-zsh plugins/git
zgen oh-my-zsh plugins/vscode
zgen oh-my-zsh plugins/gitignore
zgen oh-my-zsh plugins/osx
zgen load zsh-users/zsh-syntax-highlighting
