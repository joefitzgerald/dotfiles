#!/bin/bash

rm -rf "$HOME/.zprezto"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
cd "$HOME/.zprezto" && git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib && cd -
chsh -s /bin/zsh
ln -fs "$HOME/dotfiles/zpreztorc-macos" "$HOME/.zpreztorc"
ln -fs "$HOME/dotfiles/zprofile" "$HOME/.zprofile"
ln -fs "$HOME/dotfiles/zshrc" "$HOME/.zshrc"
ln -fs "$HOME/dotfiles/zlogin" "$HOME/.zlogin"
ln -fs "$HOME/dotfiles/zlogout" "$HOME/.zlogout"
ln -fs "$HOME/dotfiles/zshenv" "$HOME/.zshenv"
brew install git go zsh direnv wget tree tmux tcptraceroute 
git config --global user.email "jfitzgerald@vmware.com"
git config --global user.name "Joe Fitzgerald"
git config --global pull.rebase true
