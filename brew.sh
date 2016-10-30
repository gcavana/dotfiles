#!/usr/bin/env bash

print_info() {
  printf "\n\e[0;35m $1\e[0m\n\n"
}

print_success() {
  printf "\e[0;32m  [✔] $1\e[0m\n"
}

if ! type "brew" > /dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

print_success "Updating and upgrading Brew"
brew tap homebrew/versions
brew tap homebrew/dupes

# Make sure we’re using the latest Homebrew
brew update
# Upgrade any already-installed formulae
brew upgrade --all

print_success "Insall utils"
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
brew install bash
brew install wget
brew install git
brew install tree
brew install pwgen
brew install gnu-tar
brew install htop
brew install pdsh
brew install htop-osx
brew tap thoughtbot/formulae

print_success "Installing PHP Env"
brew install homebrew/dupes/grep
brew tap homebrew/php
brew install php70
brew install php70-xdebug
brew install php70-mcrypt
brew install php70-symfony-debug
brew install composer

print_success "Installing Python Env"
brew install python

print_success "Installing Rbenv Env"
brew install rbenv

print_success "Installing Tmux"
brew install tmux
brew install tmux-mem-cpu-load

print_success "Installing Mix Package"
# Install everything else
brew install ssh-copy-id
brew install highlight

print_success "Installing NVM Package"
#nvm
brew install nvm

print_success "Installing Docker Package"
#docker
brew install docker
brew install docker-machine
brew install docker-compose
brew install docker-machine-driver-xhyve
brew install docker-machine-nfs
brew install xhyve

print_success "Installing Neovim Env"

brew install fzf
brew install neovim/neovim/neovim

print_success "Installing Cask"

brew tap caskroom/cask
brew install brew-cask

print_success "Installing Cask App"
brew tap caskroom/versions

brew cask install cleanmymac2
brew cask install forklift
brew cask install google-chrome
brew cask install macdown
brew cask install dash
brew cask install sequel-pro
brew cask install silverlight
brew cask install sonos
brew cask install spotify
brew cask install the-unarchiver
brew cask install virtualbox
brew cask install vlc
brew cask install iterm2
brew cask install beamer
brew cask install sublime-text

print_success "Cleaning"
# Remove outdated versions from the cellar
brew cleanup
