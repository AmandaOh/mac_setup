#!/bin/bash

set -e

#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
vi ~/.zshrc
echo "ZSH_THEME=\"agnoster\"" >> ~/.zshrc

#install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.6
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zprofile

#install node
brew install gnupg
asdf plugin-add java
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install node 12.14.1
asdf global node 12.14.1
echo "Finish installing nodeJS"
asdf install node latest

#install java 11
asdf plugin-add java
brew install jq
asdf install java adopt-openjdk-11.0.6+10
asdf global java adopt-openjdk-11.0.6+10
echo "Finish installing java 11"

brew cask install alfred 
brew cask install macpass
brew cask install webstorm
brew cask install docker
brew cask install iterm2
brew cask install spotify
brew cask install skype
brew cask install postman

source ./~.zshrc
