#!/bin/sh
# Sets some Ubuntu Gnome3 settings to the way I like it.
#
# Run ./set-defaults.sh to apply settings.

if test "$(lsb_release -d)" = *"Ubuntu"*; then
    # If Solus linux, enable the Budgie dark theme.
    echo "foob bar"
    #gsettings set com.solus-project.budgie-panel dark-theme true
fi
