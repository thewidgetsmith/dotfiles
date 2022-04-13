#!/usr/bin/env zsh
#
# various shared functions
#

setup_colors () {
  if [[ -t 2 ]] && [[ -z "${NO_COLOR-}" ]] && [[ "${TERM-}" != "dumb" ]]; then
    NOFORMAT='\033[0m'
    RED='\033[00;31m'
    GREEN='\033[00;32m'
    ORANGE='\033[00;33m'
    BLUE='\033[00;34m'
    PURPLE='\033[00;35m'
    CYAN='\033[00;36m'
    YELLOW='\033[01;33m'
  else
    NOFORMAT=''
    RED=''
    GREEN=''
    ORANGE=''
    BLUE=''
    PURPLE=''
    CYAN=''
    YELLOW=''
  fi
}

die () {
  local err=$1
  local code=${2-1} # default exit status 1
  error "$err"
  echo ''
  exit "$code"
}

error () {
  printf "\r\033[2K  [${RED}FAIL${NOFORMAT}] $1\n"
}

info () {
  printf "\r  [ ${BLUE}..${NOFORMAT} ] $1\n"
}

success () {
  printf "\r\033[2K  [ ${GREEN}OK${NOFORMAT} ] $1\n"
}

user () {
  printf "\r\033[2K  [ ${ORANGE}??${NOFORMAT} ] $1\n"
}

warn () {
  printf "\r\033[2K  [${YELLOW}WARN${NOFORMAT}] $1\n"
}

link_file () {
  local src=$1
  local dst=$2

  local action=
  local backup=
  local overwrite=
  local skip=

  if [ -f "$dst" -o -d "$dst" -o -L "$dst" ]; then
    if [ "$overwrite_all" == "false" ] \
        && [ "$backup_all" == "false" ] \
        && [ "$skip_all" == "false" ]; then

      local currentSrc="$(readlink $dst)"

      if [ "$currentSrc" != "$src" ]; then

        user "${ORANGE}File already exists: $dst ($(basename "$src"))${NOFORMAT}\n Choose what to do?\n\
        [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all?"
        read -n 1 action

        case "$action" in
          o )
            overwrite=true;;
          O )
            overwrite_all=true;;
          b )
            backup=true;;
          B )
            backup_all=true;;
          s )
            skip=true;;
          S )
            skip_all=true;;
          * )
            ;;
        esac

      else

        skip=true;

      fi
    fi

    overwrite=${overwrite:-$overwrite_all}
    backup=${backup:-$backup_all}
    skip=${skip:-$skip_all}

    if [ "$overwrite" == "true" ]; then
      rm -rf "$dst"
      success "removed $dst"
    fi

    if [ "$backup" == "true" ]; then
      mv "$dst" "${dst}.backup"
      success "moved $dst to ${dst}.backup"
    fi

    if [ "$skip" == "true" ]; then
      success "skipped $src"
    fi
  fi

  if [ "$skip" != "true" ]; then  # "false" or empty
    ln -s "$1" "$2"
    success " › linked $1 to $2"
  fi
}
