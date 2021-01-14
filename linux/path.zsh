# Check if a local binaries directory exists
# if so, add the directory to path.
#
# Check for ~/.local/bin
#
if [ -d "$HOME/.local/bin" ]; then
  export PATH="$PATH:$HOME/.local/bin"
fi
