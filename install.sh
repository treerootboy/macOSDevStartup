#!/bin/bash
curl -sL https://github.com/treerootboy/macOSDevStartup/archive/master.zip -o /tmp/macOSDevStartup.zip
unzip -o /tmp/macOSDevStartup.zip -d /tmp/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
cat /tmp/macOSDevStartup-master/npmfile | xargs -I{} npm i -g {}
cat /tmp/macOSDevStartup-master/composer | xargs -I{} composer require -g {}
rm -rf /tmp/macOSDevStartup-master
rm -f /tmp/macOSDevStartup.zip
