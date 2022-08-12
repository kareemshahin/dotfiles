#!/usr/bin/env bash

echo "Starting setup..."

xcode-select --install

if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "${HOME}/.zshrc"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

OZSH_DIR="${HOME}/.oh-my-zsh"
if [ -d ${OZSH_DIR} ]; then
  echo "oh-my-zsh aleady in the building!"
else
  echo "Installing oh-my-zsh.."
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

PACKAGES=(
  asdf
  neovim
  plantuml
  readline
  ripgrep
  awscli
  aws-vault
)

echo "Installing packages via homebrew..."
brew install "${PACKAGES[@]}"

CASKS=(
  docker
  gpg-suite
  1password
)

echo "Installing cask apps..."
brew install --cask "${CASKS[@]}"

echo "Mac setup complete!"
