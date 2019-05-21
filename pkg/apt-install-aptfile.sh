#!/bin/sh
#
# Advanced Packaging Tool (APT) AptFile
#
# installs packages listed in AptFile using APT.
#
# method found at Monolune:
# https://www.monolune.com/installing-apt-packages-from-a-requirements-file/

sed 's/#.*//' $ZSH/AptFile | xargs sudo apt-get install --yes
