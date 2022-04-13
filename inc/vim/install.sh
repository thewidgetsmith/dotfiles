#!/bin/zsh
#
# vim-plug installation
#
# Installs vim-plug if not already
# installed, otherwise updates.

echo "› install/update vim-plug and vim plugins"

VIMPLUG_REPO="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
VIMPLUG_FILE="$HOME/.vim/autoload/plug.vim"

# Check if vim-plug is installed
if [ -d "$VIMPLUG_FILE" ]; then
    # vim-plug installation found, update it
    echo "  vim-plug install found. updating ..."
    vim +PlugUpgrade +qall

    echo "  updating vim plugins ..."
    vim +PlugInstall +qall  # install new or missing plugins
    vim +PlugUpdate +qall

else
    # vim-plug installation not found, install it
    echo "  vim-plug installation not found. installing ..."
    curl --silent -fLo $VIMPLUG_FILE --create-dirs $VIMPLUG_REPO

    echo "  installing vim plugins ..."
    vim +PlugInstall +qall
fi
