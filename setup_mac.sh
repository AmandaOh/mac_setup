#!/bin/bash

set -e

#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.6
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zprofile

#install node
brew install gnupg
brew cask install alfred 
brew cask install macpass
brew cask install webstorm
brew cask install docker
brew cask install iterm2
brew cask install spotify
brew cask install skype
brew cask install postman
brew cask install 1password
brew cask install firefox

exec zsh -l
