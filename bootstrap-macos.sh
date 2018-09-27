#!/bin/bash

rm -rf "$HOME/.zprezto"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
chsh -s /bin/zsh
ln -fs "$HOME/dotfiles/vimrc" "$HOME/.vimrc"
ln -fs "$HOME/dotfiles/zpreztorc-macos" "$HOME/.zpreztorc"
ln -fs "$HOME/dotfiles/zprofile" "$HOME/.zprofile"
ln -fs "$HOME/dotfiles/zshrc" "$HOME/.zshrc"
ln -fs "$HOME/dotfiles/zlogin" "$HOME/.zlogin"
ln -fs "$HOME/dotfiles/zlogout" "$HOME/.zlogout"
ln -fs "$HOME/dotfiles/zshenv" "$HOME/.zshenv"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git go zsh cloudfoundry/tap/cf-cli cloudfoundry/tap/bosh-cli direnv yarn wget tree tmux tcptraceroute jq
git config --global user.email "jfitzgerald@pivotal.io"
git config --global user.name "Joe Fitzgerald"
git config --global pull.rebase true
