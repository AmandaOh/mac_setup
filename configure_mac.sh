echo "setting git configs"
git config --global user.name "Amanda Oh"
git config --global user.email amanda.oh.me@gmail.com

echo "installing nodeJS ver 12.14.1"
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
echo "Finished installing java 11"
 
