#!/usr/bin/env bash

dotfiles="$HOME/.dotfiles"

install() {
  if [ -e $2 ] ; then
    rm -rf $2
  fi
  ln -nfs $1 $2
}

echo -e "\033[33m\n✔\033[33m Installing Zsh...\033[0m\n"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
echo -e "\033[33m\n✔\033[33m Setting Zsh...\033[0m\n"
chsh -s /bin/zsh

echo -e "\033[33m\n✔\033[33m Installing/Updating dotfiles...\033[0m\n"

if [ ! -e $dotfiles/.git ]; then
echo -e "\033[33m\n✔\033[33m Cloning dotfiles...\033[0m\n"
  git config --global http.verify false
  git clone https://github.com/eljam/dotfiles.git $dotfiles
else
echo -e "\033[33m\n✔\033[33m Updating dotfiles...\033[0m\n"
  cd $dotfiles && git pull
fi

echo -e "\033[33m\n✔\033[33m Setting up aliases...\033[0m\n"
install $dotfiles/bash/aliases $HOME/.aliases
install $dotfiles/zsh/zshrc $HOME/.zshrc
install $dotfiles/zsh/zshenv $HOME/.zshenv
install $dotfiles/zsh/zlogin $HOME/.zlogin
install $dotfiles/zsh/zlogout $HOME/.zlogout
install $dotfiles/zsh/zpreztorc $HOME/.zpreztorc
install $dotfiles/zsh/zprofile $HOME/.zprofile
install $dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
install $dotfiles/vim/vimrc $HOME/.vimrc

echo -e "\033[33m\n✔\033[33m Setting up dev tools...\033[0m\n"
install $dotfiles/git/gitconfig $HOME/.gitconfig
