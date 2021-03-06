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
export GRADLE_OPTS="-Xmx512M"
export SQSP_BLOG_HOME="$HOME/work/blog-squarespace"
export CC=gcc
export ANDROID_HOME=/Applications/Android\ Studio.app/sdk
export ANDROID_SDK=/Applications/Android\ Studio.app/sdk
export PATH=${ANDROID_SDK}/platform-tools:${ANDROID_SDK}/tools:$PATH
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function

if [ -f ~/.dotfiles/bash/.git-completion.bash ]; then
  . ~/.dotfiles/bash/.git-completion.bash
fi
