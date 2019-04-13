#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cat npmfile | xargs -I{} npm i -g {}
cat composer | xargs -I{} composer require -g {}
