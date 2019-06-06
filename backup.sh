#!/bin/bash
# 备份 npm 包
npm ls  -g --depth=0  2>&1 | grep "──" | awk '{print $2}' > npmfile

# 备份 composer 包
\cp -f ~/.composer/composer.json composer.json

# 备份 brew 包
brew bundle dump

