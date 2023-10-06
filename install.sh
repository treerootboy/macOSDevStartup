#!/bin/bash
curl -sL https://github.com/treerootboy/macOSDevStartup/archive/master.zip -o /tmp/macOSDevStartup.zip
unzip -o /tmp/macOSDevStartup.zip -d /tmp/
cd /tmp/macOSDevStartup-master/
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew bundle --file=Brewfile
cat npmfile | xargs -I{} npm i -g {}
cp composer.json ~/.composer/composer.json
composer global install
pip install -g -r pip.requirements
# bash packWebApp.sh
cd
rm -rf /tmp/macOSDevStartup-master
rm -f /tmp/macOSDevStartup.zip
