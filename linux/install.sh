# Run OS and installed package updates
if [ -x "$(command -v apt)" ]; then
    # Debian/Ubuntu distros use apt
    echo "› sudo apt update && sudo apt dist-upgrade --yes"
    sudo apt update && sudo apt dist-upgrade --yes
fi
