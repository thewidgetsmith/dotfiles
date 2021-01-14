if test "$(uname -s)" = "Linux"; then
  # alias xdg-open to behave the same
  # as the `open` command in Mac OS
  if test $(command -v xdg-open); then
    alias open='xdg-open $*'
  fi
fi

alias reload!='. ~/.zshrc'
alias cls='clear'
