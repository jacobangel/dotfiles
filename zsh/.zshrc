# .zshrc
## echo "Loading .zshrc"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PROMPT="$LIGHT_GREEN%n$NO_COLOR@$LIGHT_GREEN%m$NO_COLOR:$LIGHT_BLUE%~$LIGHT_RED\$(parse_git_branch)$NO_COLOR%B %F{225}§%f %b"

fpath=(~/.zsh $fpath)