#!/usr/bin/env bash

dotfiles="$HOME/.dotfiles"

install() {
  if [ -e $2 ] ; then
    rm -rf $2
  fi
  ln -nfs $1 $2
  print_success "$1 → $2"
}

print_info() {
  printf "\n\e[0;35m $1\e[0m\n\n"
}

print_success() {
  printf "\e[0;32m  [✔] $1\e[0m\n"
}

print_info "Installing Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

print_info "Installing Zsh Themes"
curl "https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm/master/honukai.zsh-theme" -o ~/.oh-my-zsh/themes/honukai.zsh-theme

print_info "Setting Zsh"
chsh -s /bin/zsh

print_info "Installing/Updating dotfiles"

if [ ! -e $dotfiles/.git ]; then
  print_info "Cloning dotfiles"
  git clone https://github.com/eljam/dotfiles.git $dotfiles
else
  print_info "Updating dotfiles"
  cd $dotfiles && git pull
fi

print_info "Setting up aliases"

if [ ! -e $HOME/.config ]; then
  print_info "Create config dir for nvim"
  mkdir -p $HOME/.config
fi

install $dotfiles/bash/aliases $HOME/.aliases
install $dotfiles/zsh/zshrc $HOME/.zshrc
install $dotfiles/zsh/zshenv $HOME/.zshenv
install $dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
install $dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
install $dotfiles/nvim/config.vim $HOME/.config/nvim/config.vim
install $dotfiles/nvim/keys.vim $HOME/.config/nvim/keys.vim
install $dotfiles/nvim/plugins.vim $HOME/.config/nvim/plugins.vim

print_info "Setting up dev tools"
install $dotfiles/git/gitconfig $HOME/.gitconfig
cp $dotfiles/git/gitconfig.local $HOME/.gitconfig.local

print_info "Add iterm colors"
open "${dotfiles}/iterm/themes/honukai.itermcolors"

