# .zshenv
# Sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search path,
# plus other important environment variables.
# `.zshenv' should not contain commands that produce output or assume the shell is attached to a tty.
# echo "Loading .zshenv"

export PATH=$HOME/bin:/usr/local/bin:$PATH

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


## Sourced in interactive shells. It should contain commands to set up aliases, functions, options, key bindings, etc.
# export CLICOLOR=1
# export LS_OPTS='--color=auto'
# export LSCOLORS=GxFxCxDxBxegedabagaced
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
export ZSH="$HOME/.oh-my-zsh"
