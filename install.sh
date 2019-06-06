#!/bin/bash
curl -sL https://github.com/treerootboy/macOSDevStartup/archive/master.zip -o /tmp/macOSDevStartup.zip
unzip -o /tmp/macOSDevStartup.zip -d /tmp/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle --file=/tmp/macOSDevStartup-master/Brewfile
cat /tmp/macOSDevStartup-master/npmfile | xargs -I{} npm i -g {}
cp /tmp/macOSDevStartup-master/composer.json ~/.composer/composer.json
composer global install
rm -rf /tmp/macOSDevStartup-master
rm -f /tmp/macOSDevStartup.zip
