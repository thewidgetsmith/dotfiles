# Pipe my public key to my clipboard.
if test "$(uname -s)" = "Darwin"; then
    alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
elif test "$(uname -s)" = "Linux"; then
    alias pubkey="xclip -sel clip < ~/.ssh/id_rsa.pub | echo '=> Public key copied to pasteboard.'"
fi
