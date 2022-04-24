#! /usr/bin/env zsh

dotfiles_install_zsh() {
    echo "Setting up dotfiles in ${0:a:h}..."

    echo "Installing zgen..."
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

    echo "Writing .zshrc..."
    echo "source '${0:a:h}/rc.zsh'" > "${HOME}/.zshrc"

    echo "Sourcing .zshrc and installing plugins..."
    source "${HOME}/.zshrc"

    echo "Installation complete. Source .zshrc or restart your shell to apply changes."
}

if [[ -v CODESPACES ]]; then
    echo "Codespace detected. Installing zsh plugins..."
    dotfiles_install_zsh
elif [ -s "$HOME/.zshrc" ]; then
    echo ".zshrc already exists. Skipping zsh portion of install."
else
    dotfiles_install_zsh
fi
