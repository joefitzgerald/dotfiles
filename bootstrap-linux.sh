#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get --assume-yes install tmux git vim zsh

chsh -s /usr/bin/zsh joe
git clone https://github.com/joefitzgerald/dotfiles.git
if [[ "$OSTYPE" == darwin* ]]; then
  wget -O go.tar.gz https://storage.googleapis.com/golang/go1.8.3.darwin-amd64.tar.gz
else
  wget -O go.tar.gz https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
fi
tar -C /usr/local -xzf go.tar.gz

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go
git clone https://github.com/fatih/molokai.git ~/.vim/plugged/molokai
git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
ln -fs "$HOME/dotfiles/vimrc" "$HOME/.vimrc"
ln -fs "$HOME/dotfiles/zpreztorc-linux" "$HOME/.zpreztorc"
ln -fs "$HOME/dotfiles/zprofile" "$HOME/.zprofile"
ln -fs "$HOME/dotfiles/zshrc" "$HOME/.zshrc"
ln -fs "$HOME/dotfiles/zlogin" "$HOME/.zlogin"
ln -fs "$HOME/dotfiles/zlogout" "$HOME/.zlogout"
ln -fs "$HOME/dotfiles/zshenv" "$HOME/.zshenv"
mkdir "$HOME/go"
