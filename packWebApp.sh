#!/bin/bash
mkdir -p webapp
cd webapp
nativefier --name "stackedit" "https://stackedit.io/app"
nativefier --internal-urls ".*?\.(tapd)\.*?" --name "TAPD" "https://www.tapd.cn"
nativefier --name Gmail --internal-urls ".*?\.(google.com|gmail.com)\.*?" https://gmail.com
mv */*.app /Applications
