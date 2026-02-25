# .profile

# PATH for Apple Silicon Homebrew
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/bin:$PATH

# Colors and prompt
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
LIGHT_GREEN="\[\033[1;32m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_BLUE="\[\033[1;34m\]"
NO_COLOR="\[\033[0m\]"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="$LIGHT_GREEN\u@\h$NO_COLOR:$LIGHT_GREEN\w$LIGHT_RED\$(parse_git_branch)$NO_COLOR § "

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Git completion
if [ -f ~/.dotfiles/bash/.git-completion.bash ]; then
  . ~/.dotfiles/bash/.git-completion.bash
fi
