#!/bin/sh
#
# SDKMAN
#
# Installs SDKMAN if not already
# installed, otherwise updates.

echo "› install/update sdkman"

SDKMAN_REPO="https://raw.githubusercontent.com/creationix/nvm/master/install.sh"
SDKMAN_FILE="$HOME/.sdkman/bin/sdkman-init.sh"

# Check if SDKMAN is installed
if [ -d "$SDKMAN_FILE" ]; then
  # sdkman installation found, update it
  echo "  sdkman install found. updating ..."

else
  # sdkman installation not found, install it
  echo "  sdkman installation not found. installing ..."
  #curl --silent -fLo $NVM_FILE --create-dirs $NVM_REPO
fi
