#!/usr/bin/env bash

if ! type "brew" > /dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\033[33m\n✔\033[33m Updating and upgrading Brew...\033[0m\n"
# Make sure we’re using the latest Homebrew
brew update
# Upgrade any already-installed formulae
brew upgrade

echo "\033[33m\n✔\033[33m Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH.\033[0m\n"
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

echo -e "\033[33m\n✔\033[33m Installing PHP Env...\033[0m\n"
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew tap homebrew/php
brew install php70
brew install php70-xdebug
brew install php70-mcrypt
brew install php70-symfony-debug
brew install composer

echo -e "\033[33m\n✔\033[33m Installing Python Env...\033[0m\n"
brew install python

echo -e "\033[33m\n✔\033[33m Installing Tmux...\033[0m\n"
brew install tmux
brew install tmux-mem-cpu-load

echo -e "\033[33m\n✔\033[33m Installing Mix Package...\033[0m\n"
# Install everything else
brew install ssh-copy-id
brew install highlight

echo -e "\033[33m\n✔\033[33m Installing NVM Package...\033[0m\n"
#nvm
brew install node

echo -e "\033[33m\n✔\033[33m Installing Docker Package...\033[0m\n"
#docker
brew install docker
brew install docker-machine
brew install docker-compose
brew install docker-machine-driver-xhyve
brew install docker-machine-nfs
brew install xhyve

echo -e "\033[33m\n✔\033[33m Installing Neovim Env...\033[0m\n"
brew install neovim/neovim/neovim

echo -e "\033[33m\n✔\033[33m Installing Cask...\033[0m\n"
brew tap phinze/cask
brew install brew-cask

echo -e "\033[33m\n✔\033[33m Installing Cask App...\033[0m\n"
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

echo -e "\033[33m\n✔\033[33m Cleaning...\033[0m\n"
# Remove outdated versions from the cellar
brew cleanup
