# when eopkg exists, alias to something easier to type
if [ -x "$(command -v eopkg)" ]; then
    alias eo='eopkg'
fi

# when xdg-open exists, alias open to xdg-open
if [ -x "$(command -v xdg-open)" ]; then
    alias open='xdg-open'
fi
