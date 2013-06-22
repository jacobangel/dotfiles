# Dotfiles

I suppose I should have just forked someone else's dotfile.

## Usage

````
git clone git@github.com:jacobangel/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/build.sh
````

## Organization

### Scaffolding

* `./bin/*` scripts you want to run any where. 
* `./scripts/*` non-environment related scripts.
* `./topics/*` Any topic areas to be set up on an install.

### Topics

I've decided to follow the dotfile style topic organization, which says that a beyond the files run by `scripts/install.sh`, topics can be added simply by adding a new folder and following some conventions.

* `./topic/*.(zsh|sh)` - Files run by install
* `./topic/*.symlink` - Any symlinks that need to happen
* `./topic/*.path` - Additional pathfile modifications

Nested folders will be ignored by the build script.


## Wat

Basically, running build.sh will iterate over each topic, running the following tasks:

* Add `~/.dotfiles/bin` will be added to your $PATH
* Iterate over each topic folder
  - Run all shell files in root directory
  - Insert paths in `*.path`
  - Connect all the files `*.symlink`
* Report on a successful install.
