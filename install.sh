#!/bin/bash
curl -sL https://github.com/treerootboy/macOSDevStartup/archive/master.zip -o /tmp/macOSDevStartup.zip
unzip -o /tmp/macOSDevStartup.zip -d /tmp/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle --file=/tmp/macOSDevStartup-master/Brewfile
cat /tmp/macOSDevStartup-master/npmfile | xargs -I{} npm i -g {}
cat /tmp/macOSDevStartup-master/composer | xargs -I{} composer global require {}
rm -rf /tmp/macOSDevStartup-master
rm -f /tmp/macOSDevStartup.zip
