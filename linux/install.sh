# Run OS and installed package updates
if test "$(lsb_release -d)" = *"Ubuntu"*; then
    echo "› sudo apt update && sudo apt dist-upgrade --yes"
    sudo apt update && sudo apt dist-upgrade --yes
fi
