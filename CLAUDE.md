# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository using a topic-based organization system. Each topic (bash, zsh, git, vim, etc.) lives in its own directory and can contain install scripts, configuration files, and shell scripts. The build system automatically discovers and runs all installation scripts.

## Installation & Setup

**Initial setup:**

```bash
git clone git@github.com:jacobangel/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./scripts/build.sh
```

The build script (`scripts/build.sh`) performs the following:

1. Checks for Homebrew installation (required dependency)
2. Discovers and runs all `install.sh` files in topic directories
3. Creates `~/.gitignore_global` if it doesn't exist
4. Processes gitignore.txt files into global gitignore

**Prerequisites:**

- Homebrew must be installed before running build.sh
- The script will exit with an error message if Homebrew is missing

## Architecture & Design Patterns

### Topic-Based Organization

Each topic directory (e.g., `zsh/`, `git/`, `vim/`) is self-contained:

- `install.sh` - Setup script run by build.sh
- Configuration files (e.g., `.zshrc`, `.vimrc`)
- Supporting files (e.g., completion scripts)

**Note:** Only files in the root of topic directories are processed by build.sh. Nested folders are ignored.

### Shell Configuration Loading Order

The repository configures both bash and zsh. Understanding the load order is important:

**Zsh:**

1. `.zshenv` - Loaded for all shell invocations, sets PATH and environment variables
2. `.zprofile` - Loaded for login shells (currently minimal)
3. `.zshrc` - Loaded for interactive shells, sets prompt and loads completions

**Bash:**

1. `.profile` - Main bash configuration file

Both shells source their respective config files from `~/.dotfiles/{bash,zsh}/` into the home directory configs.

### Environment Configuration

Key environment variables set in `.zshenv` and `.profile`:

- `NVM_DIR` - Node Version Manager directory
- `ANDROID_HOME` / `ANDROID_SDK` - Android development paths
- `GROOVY_HOME` - Groovy installation path
- `SQSP_BLOG_HOME` - Project-specific path
- `MAVEN_OPTS` / `GRADLE_OPTS` - JVM memory settings
- `ZSH` - oh-my-zsh installation directory

The prompt includes git branch information via the `parse_git_branch` function.

## Common Development Tasks

**Installing a new topic:**

1. Create a new directory for the topic
2. Add an `install.sh` script in the topic root
3. Run `./scripts/build.sh` to execute all install scripts

**Adding shell configurations:**

- For zsh: Edit files in `zsh/` directory
- For bash: Edit files in `bash/` directory
- Changes take effect after sourcing or restarting shell

## Key Components

### Git Configuration (git/install.sh)

Sets global git config with:

- User info
- Default branch set to `main`
- Aliases: `co` (checkout), `st` (status), `l` (log with custom format), `pro` (pull --rebase origin), `prom` (pull --rebase origin main)
- Color output enabled
- Reuse recorded resolution (rerere) enabled
- Case-sensitive filesystem handling

### Homebrew Dependencies (homebrew/install.sh)

Installs development tools:

- mongodb
- rabbitmq
- imagemagick
- zookeeper
- nvm (Node Version Manager)
- pnpm (Fast, disk space efficient package manager)

### OSX System Preferences (osx/install.sh)

Configures macOS system settings including:

- Computer name set to "Blackfyre"
- Menu bar customization
- Finder preferences
- Various UI/UX tweaks

This file originated from mathiasbynens/dotfiles and contains extensive system preference modifications.

### Shell Integration

The zsh install script:

1. Installs oh-my-zsh framework
2. Copies git completion script to `~/.zsh/_git/`
3. Adds source commands to `~/.zprofile`, `~/.zshenv`, and `~/.zshrc` to load dotfiles configs

### AI Agent Configuration (agents/)

Provides default settings and context for AI coding agents:

- `AGENTS.md` - Context file following OpenAI's agents.md standard with development preferences
- `claude-settings.json` - Claude Code settings (plan mode enabled by default)
- `cursor-settings.json` - Cursor editor default settings
- `install.sh` - Installs Claude Code CLI globally via npm and copies configuration files to their appropriate locations (`~/AGENTS.md`, `~/.claude/settings.json`, Cursor settings directory)

## Important Notes

- The repository is designed for macOS (see osx/install.sh)
- Node version management uses nvm, loaded in shell configs
- Ruby version management uses rvm, loaded in shell configs
- Git branch name is integrated into shell prompt with custom colors
