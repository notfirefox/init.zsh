# set default shell
autoload -Uz compinit
compinit

# set history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000

# set prompt
PROMPT='[%n@%m %.]%(!.#.$) '

# create alias for updating zsh plugins
alias zsh-update="git -C ${0:a:h} submodule update --remote --merge"

# allow case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# fix for zsh-syntax-highlighting
ZVM_INIT_MODE='sourcing'

# source zsh plugins
source "${0:a:h}/zsh-vi-mode/zsh-vi-mode.plugin.zsh"
source "${0:a:h}/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${0:a:h}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
