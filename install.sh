#!/bin/bash
curl -sL https://github.com/treerootboy/macOSDevStartup/archive/master.zip -o /tmp/macOSDevStartup.zip
unzip -o macOSDevStartup.zip -d /tmp/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cat /tmp/macOSDevStartup-master/npmfile | xargs -I{} npm i -g {}
cat /tmp/macOSDevStartup-master/composer | xargs -I{} composer require -g {}
