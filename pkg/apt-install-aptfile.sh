#!/bin/sh
#
# Process AptFile
# installs packages listed in AptFile using APT.
#
# NOTE: ignores all lines beginning with '#' character.
#
# method found at Monolune:
# https://www.monolune.com/installing-apt-packages-from-a-requirements-file/
#
sed 's/#.*//' $ZSH/AptFile | xargs sudo apt install --yes
