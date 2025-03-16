#!/bin/bash

# Install ohmyzsh
curl -s https://ohmyposh.dev/install.sh | bash -s

# Install Packages
sudo apt-get install -y fzf

# Install Yarn Packages
npm install -g rebase-editor

# Update the git config
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# Update the zsh config
ln -sf ~/dotfiles/.zshrc ~/.zshrc && . ~/.zshrc

# Update the tmux config
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
