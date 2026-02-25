# .zshrc
# Loaded for interactive shells

# NVM
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# Colors and prompt
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
RED="%F{124}"
LIGHT_RED="%F{196}"
YELLOW="%F{yellow}"
LIGHT_GREEN="%F{84}"
GREEN="%F{42}"
GRAY="%F{gray}"
LIGHT_GRAY="%F{245}"
CYAN="%F{cyan}"
LIGHT_CYAN="%F{87}"
BLUE="%F{blue}"
LIGHT_BLUE="%F{39}"
NO_COLOR="%f"

export PROMPT="$LIGHT_GREEN%n$NO_COLOR@$LIGHT_GREEN%m$NO_COLOR:$LIGHT_BLUE%~$LIGHT_RED\$(parse_git_branch)$NO_COLOR%B %F{225}§%f %b"

fpath=(~/.zsh $fpath)
