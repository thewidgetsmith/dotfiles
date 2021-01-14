#!/usr/bin/env zsh
#
# Homebrew BrewFile
#
# For macOS, install Homebrew if not already installed.
#
if test "$(uname)" = "Darwin"; then
  if test ! $(command -v brew); then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi

exit 0
