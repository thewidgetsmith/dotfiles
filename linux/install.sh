# Run OS and installed package updates
if [ -x "$(command -v eopkg)" ]; then
    # SolusOS uses eopkg for package management
    echo "› eopkg update-repo && sudo eopkg upgrade --yes"
    sudo eopkg update-repo && sudo eopkg upgrade --yes
elif [ -x "$(command -v apt)" ]; then
    # Debian/Ubuntu distros use apt
    echo "› sudo apt update && sudo apt dist-upgrade --yes"
    sudo apt update && sudo apt dist-upgrade --yes
fi
