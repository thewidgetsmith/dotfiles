# Sets some Ubuntu Gnome3 settings to the way I like it.
#
# Run ./set-defaults.sh to apply settings.

if [ -x "$(command -v gsettings)" ]; then
    # Nautilus
    gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'  # Set nautilus to use list-view by default
    gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'           # Display small list-view items
    gsettings set org.gnome.nautilus.list-view use-tree-view true                   # Allow folders to be expanded

    # Dock Behavior
    gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'    # Move dock to bottom of screen
    gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 24     # Set dock icon size (good size for 1440p)

    # Screenshots
    mkdir -p "$HOME/Pictures/Screenshots"                                                       # Create Screenshots directory
    gsettings set org.gnome.gnome-screenshot auto-save-directory "$HOME/Pictures/Screenshots"   # Set Gnome-Screenshots save directory

    echo "DIR: $HOME/Pictures/Screenshots"

fi
