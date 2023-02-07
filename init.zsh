# set default shell
autoload -Uz compinit
compinit

# set history
HISTFILE="$HOME/.histfile"
HISTSIZE=1000
SAVEHIST=1000

# set prompt
PROMPT='[%n@%m %.]%(!.#.$) '

# set aliases
alias mdl="$HOME/Development/sh/mdl/mdl"

# allow case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# fix for zsh-syntax-highlighting
ZVM_INIT_MODE='sourcing'

# source zsh plugins
source "$(dirname $0)/zsh-vi-mode/zsh-vi-mode.plugin.zsh"
source "$(dirname $0)/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$(dirname $0)/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
