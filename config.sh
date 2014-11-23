#!/bin/sh
git config --global user.email "vrebierr@student.42.fr"

curl -L http://install.ohmyz.sh | sh
cp .zshrc ~/.zshrc
source ~/.zshrc

npm set prefix ~/.npm

npm install -g yo
npm install -g generator-angular-fullstack
npm install -g bower
npm install -g gulp
npm install -g grunt
npm install -g grunt-cli

curl -O http://downloads.mongodb.org/osx/mongodb-osx-x86_64-2.6.4.tgz
tar -zxvf mongodb-osx-x86_64-2.6.4.tgz
mkdir -p ~/mongodb && cp -R -n mongodb-osx-x86_64-2.6.4/ ~/mongodb
mkdir -p ~/mongodb/data/db
rm -rf mongodb-osx-x86_64-2.6.4.tgz mongodb-osx-x86_64-2.6.4/

git clone https://github.com/miksago/jade-tmbundle.git ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Jade

brew update
brew install ag
brew install heroku-toolbelt

gem install sass --user-install

mongod --dbpath ~/mongodb/data/db
