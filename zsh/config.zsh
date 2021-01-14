export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)

# keep 10k lines of history within the shell and save it to ~/.zsh_history:
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# set ZSH options
setopt APPEND_HISTORY       # append session history to history file
setopt COMPLETE_ALIASES     # don't expand aliases _before_ completion has finished (e.g. git comm-[tab])
setopt COMPLETE_IN_WORD     # keep cursor in place during completion
setopt CORRECT              # attempt to correct spelling of commands
setopt EXTENDED_HISTORY     # add timestamps to history
setopt HIST_IGNORE_ALL_DUPS # don't record dupes in history
setopt HIST_REDUCE_BLANKS   # remove superfluous blanks from each command line added to the history list
setopt HIST_VERIFY          # perform history expansion and reload the line into the editing buffer
setopt IGNORE_EOF           # no exit on end-of-file, require `exit` or `logout` instead
# setopt INC_APPEND_HISTORY   # adds history incrementally and share it across sessions
setopt LOCAL_OPTIONS        # allow functions to have local options
setopt LOCAL_TRAPS          # allow functions to have local traps
setopt NO_BG_NICE           # don't nice background tasks
setopt NO_HUP               # no HUP signal sent to running jobs on session exit
setopt NO_LIST_BEEP         # no beep on ambiguous completion
setopt PROMPT_SUBST         # enable parameter expansion, command substitution, and arithmetic expansion in prompts
setopt SHARE_HISTORY        # share history between sessions ???

# key bindings
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

# use emacs keybindings even if our EDITOR is set to vi
bindkey -e
