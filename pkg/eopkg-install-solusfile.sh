#!/bin/sh
#
# Process SolusFile
# Installs packages listed in SolusFile using eopkg.
#
# NOTE: ignores all lines beginning with '#' character.
#
sed 's/#.*//' $ZSH/SolusFile | xargs sudo eopkg install --yes
