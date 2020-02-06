# load zgen
source "$DOTFILES_ROOT/.zgen/zgen.zsh"

# oh-my-zsh defaults
zgen oh-my-zsh lib/compfix.zsh
zgen oh-my-zsh lib/clipboard.zsh
zgen oh-my-zsh lib/completion.zsh
zgen oh-my-zsh lib/history.zsh
zgen oh-my-zsh lib/grep.zsh

# dotfiles/zsh
for file in $DOTFILES_ROOT/dotfiles/zsh/*.zsh; do
    zgen load "$file"
done

# Theme
zgen load romkatv/powerlevel10k powerlevel10k.zsh-theme

# Nice-to-have
zgen oh-my-zsh plugins/osx
zgen oh-my-zsh plugins/git
zgen oh-my-zsh plugins/vscode
zgen oh-my-zsh plugins/gitignore
zgen load Tarrasch/zsh-autoenv
zgen load zsh-users/zsh-syntax-highlighting
