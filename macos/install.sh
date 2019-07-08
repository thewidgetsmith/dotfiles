# Run OS and App Store updates
if test "$(uname -s)" = "Darwin"; then
    echo "› sudo softwareupdate -i -a"
    sudo softwareupdate -i -a
fi
