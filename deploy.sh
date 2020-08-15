#!/usr/bin/env bash

set -o errexit
set -o pipefail

sudo -H python3 -mpip install --no-cache-dir setuptools wheel
sudo -H python3 -mpip install --no-cache-dir b2
cd $GITHUB_WORKSPACE
zip -r hidden_totem_food_offhand.zip assets pack.mcmeta
b2 authorize-account $1 $2
b2 upload-file --noProgress $3 hidden_totem_food_offhand.zip hidden_totem_food_offhand.zip 
b2 clear-account