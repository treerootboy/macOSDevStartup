#!/bin/bash
npm ls  -g --depth=0  2>&1 | grep "──" | awk '{print $2}' > npmfile
