# .profile
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
RED="\[\033[0;31m\]"
LIGHT_RED="\[\033[1;31m\]"
YELLOW="\[\033[0;33m\]"
LIGHT_GREEN="\[\033[1;32m\]"
GREEN="\[\033[0;32m\]"
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
NO_COLOR="\[\033[0m\]"

export CLICOLOR=1
export LS_OPTS='--color=auto'
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="$LIGHT_GREEN\u@\h$NO_COLOR:$LIGHT_GREEN\w$LIGHT_RED\$(parse_git_branch)$NO_COLOR § "
export PATH=$PATH
export MAVEN_OPTS="-Xmx512M -XX:MaxPermSize=512M"

if [ -f ~/.dotfiles/cli/.git-completion.bash ]; then
  . ~/.dotfiles/cli/.git-completion.bash
fi