#!/bin/bash
curl -sL https://github.com/treerootboy/macOSDevStartup/archive/master.zip -o /tmp/macOSDevStartup.zip
unzip -o /tmp/macOSDevStartup.zip -d /tmp/
cd /tmp/macOSDevStartup-master/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle --file=Brewfile
cat npmfile | xargs -I{} npm i -g {}
cp composer.json ~/.composer/composer.json
composer global install
bash packWebApp.sh
cd
rm -rf /tmp/macOSDevStartup-master
rm -f /tmp/macOSDevStartup.zip
