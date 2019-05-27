#!/bin/bash

# Replace X... with custom values

# Open reference screenshot created using Loky, current and difference images (macos specific)

if [ $# -ne 1 ]; then
  echo "usage: $0 <image name>"
  exit -1
fi

REPO=/XPATH/XREPO/XFOLDER

open $REPO/.loki/reference/$1.png
open $REPO/.loki/current/$1.png
open $REPO/.loki/difference/$1.png
