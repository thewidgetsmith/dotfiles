# when xdg-open exists, alias open to xdg-open
if [ -x "$(command -v xdg-open)" ]; then
    alias open='xdg-open'
fi
