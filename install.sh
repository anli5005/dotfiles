#! /usr/bin/env zsh

if [ -s "$HOME/.zshrc" ]; then
    echo ".zshrc already exists. Skipping zsh portion of install."
else
    echo "Setting up dotfiles in ${0:a:h}..."

    echo "Installing zgen..."
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

    echo "Writing .zshrc..."
    echo "source '${0:a:h}/rc.zsh'" > "${HOME}/.zshrc"

    echo "Sourcing .zshrc and installing plugins..."
    source "${HOME}/.zshrc"

    echo "Installation complete. Source .zshrc or restart your shell to apply changes."
fi