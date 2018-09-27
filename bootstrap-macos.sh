!/bin/bash

CURRENTDIR=$(dirname "$0")
rm -rf "$HOME/.zprezto"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
ln -fs "$CURRENTDIR/vimrc" "$HOME/.vimrc"
ln -fs "$CURRENTDIR/zpreztorc-macos" "$HOME/.zpreztorc"
ln -fs "$CURRENTDIR/zprofile" "$HOME/.zprofile"
ln -fs "$CURRENTDIR/zshrc" "$HOME/.zshrc"
ln -fs "$CURRENTDIR/zlogin" "$HOME/.zlogin"
ln -fs "$CURRENTDIR/zlogout" "$HOME/.zlogout"
ln -fs "$CURRENTDIR/zshenv" "$HOME/.zshenv"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git go zsh cloudfoundry/tap/cf-cli cloudfoundry/tap/bosh-cli direnv yarn wget tree tmux tcptraceroute jq
git config --global user.email "jfitzgerald@pivotal.io"
git config --global user.name "Joe Fitzgerald"
git config --global pull.rebase true
