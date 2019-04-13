#!/bin/bash
cd /tmp
curl -sL https://github.com/treerootboy/macOSDevStartup/archive/master.zip -o macOSDevStartup.zip
unzip macOSDevStartup.zip
cd macOSDevStartup-master
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cat npmfile | xargs -I{} npm i -g {}
cat composer | xargs -I{} composer require -g {}
