# configure autocompletion for kubectl
if [[ $commands[kubectl] ]]; then
  source <(kubectl completion zsh)
fi
