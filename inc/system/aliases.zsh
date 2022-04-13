
# determin which `ls` is appropriate for the current environment.
# `ls` aliases use LC_COLLATE=C to sort dot files above all others.
ls='LC_COLLATE=C ls -hF --color'
if [[ "$(uname -s)" == "Darwin" ]]; then
  if $(gls &>/dev/null); then
    ls='LC_COLLATE=C gls -hF --color'
    alias ls="$ls"
  else
    ls='LC_COLLATE=C ls -hFG'
  fi
fi

# `ls` aliases work on Mac and Linux
alias la="$ls -al"            # use long list, almost all
alias lg="$ls -Al | grep $*"  # takes grep parameters to filter list
alias ll="$ls -l"             # use long list format
alias l="la"                  # event shorter than `la`
