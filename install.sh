#!/bin/bash

# Install Yarn Packages
yarn global add rebase-editor

# Update the git config
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# Update the zsh config
ln -sf ~/dotfiles/.zshrc ~/.zshrc && . ~/.zshrc
