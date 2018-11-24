# Sets many macOS defaults to the way I like it.
#
# This is a holdover from when this repo was still a fork of:
#   https://github.com/holman/dotfiles/blob/master/macos/set-defaults.sh
#
# Run ./set-defaults.sh to apply settings.

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Set Finder prefs to show window components
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowSidebar -bool true
defaults write com.apple.finder ShowPathbar -bool true

# Blank the screen if pointer goes to the bottom-left hot corner.
#defaults write com.apple.dock wvous-bl-corner -int 10
#defaults write com.apple.dock wvous-bl-modifier -int 0

# Show Mission Control if pointer moves to top-left hot corner.
#defaults write com.apple.dock wvous-tl-corner -int 2
#defaults write com.apple.dock wvous-tl-modifier -int 0

# Show Desktop if pointer moves to bottom-right hot corner.
#defaults write com.apple.dock wvous-br-corner -int 4
#defaults write com.apple.dock wvous-br-modifier -int 0

# Show Notification Center if pointer moves to top-right hot corner.
defaults write com.apple.dock wvous-tr-corner -int 12
defaults write com.apple.dock wvous-tr-modifier -int 0

# Change screenshot location
defaults write com.apple.screencapture location ~/Pictures

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

