#!/bin/sh
#
# NVM (Node Version Manager)
#
# Installs NVM if not already
# installed, otherwise updates.

echo "› install/update node version manager"

NVM_REPO="https://raw.githubusercontent.com/creationix/nvm/master/install.sh"
NVM_FILE="$HOME/.nvm/nvm.sh"

# Check NVM is installed
if [ -d "$NVM_FILE" ]; then
  # nvm installation found, update it
  echo "  nvm install found. updating ..."

else
  # nvm installation not found, install it
  echo "  nvm installation not found. installing ..."
  curl --silent -fLo $NVM_FILE --create-dirs $NVM_REPO
fi

# if test ! $(which spoof); then
#   sudo npm install spoof -g
# fi
