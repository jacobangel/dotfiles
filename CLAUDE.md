# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository using a topic-based organization system. Each topic (bash, zsh, git, vim, ghostty, etc.) lives in its own directory and can contain install scripts, configuration files, and shell scripts. The build system automatically discovers and runs all installation scripts.

## Installation & Setup

**Initial setup:**

```bash
git clone git@github.com:jacobangel/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./scripts/build.sh
```

The build script (`scripts/build.sh`) performs the following:

1. Checks for Homebrew installation (required dependency)
2. Discovers and runs all `install.sh` files in topic directories (max depth 2)
3. Creates `~/.gitignore_global` if it doesn't exist
4. Processes gitignore.txt files into global gitignore

**Prerequisites:**

- Homebrew must be installed before running build.sh
- The script will exit with an error message if Homebrew is missing

## Architecture & Design Patterns

### Topic-Based Organization

Each topic directory (e.g., `zsh/`, `git/`, `vim/`, `ghostty/`) is self-contained:

- `install.sh` - Setup script run by build.sh (must be idempotent)
- Configuration files (e.g., `.zshrc`, `.vimrc`, `config`)
- Supporting files (e.g., completion scripts)

**Note:** Only files in the root of topic directories are processed by build.sh (`-maxdepth 2`).

### Shell Configuration Loading Order

The repository configures both bash and zsh. Understanding the load order is important:

**Zsh:**

1. `.zshenv` - Loaded for all shell invocations, sets PATH (`/opt/homebrew/bin`) and environment variables (`NVM_DIR`, `ZSH`)
2. `.zprofile` - Loaded for login shells (currently minimal)
3. `.zshrc` - Loaded for interactive shells, sets prompt with git branch, loads NVM and completions

**Bash:**

1. `.profile` - Main bash configuration file, sets PATH, prompt, NVM loading

Both shells source their respective config files from `~/.dotfiles/{bash,zsh}/` into the home directory configs. Install scripts use `grep -qF` guards to prevent duplicate source lines.

### Environment Configuration

Key environment variables set in `.zshenv` and `.profile`:

- `NVM_DIR` - Node Version Manager directory
- `ZSH` - oh-my-zsh installation directory
- `PATH` - Includes `/opt/homebrew/bin`, `/opt/homebrew/sbin`, `$HOME/bin` (Apple Silicon paths)

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
- Modern defaults: `pull.rebase true`, `push.autoSetupRemote true`, `push.default current`, `diff.algorithm histogram`, `branch.sort -committerdate`
- Credential helper: osxkeychain
- Color output: `color.ui auto`
- Reuse recorded resolution (rerere) enabled

### Homebrew Dependencies (homebrew/Brewfile)

Uses `brew bundle` with a Brewfile. Current dependencies:

- gh (GitHub CLI)
- ripgrep
- nvm (Node Version Manager)
- pnpm
- tmux
- cloc
- ghostty (cask)
- zed (cask)

### Ghostty Configuration (ghostty/)

Terminal emulator config installed to `~/.config/ghostty/config`:

- Font: Menlo 14pt
- macOS tabs titlebar style
- Block cursor, 10k scrollback
- zsh shell integration

### Vim Configuration (vim/)

Uses vim-plug plugin manager with:

- vim-sensible, vim-commentary, vim-surround plugins
- Standard settings: line numbers, 2-space tabs, smart search, system clipboard, no swap files

### OSX System Preferences (osx/install.sh)

Configures macOS system settings including:

- Computer name set to "Blackfyre"
- Expand save/print panels, save to disk not iCloud
- Fast key repeat, disable press-and-hold
- Password required after sleep, screenshots to Desktop as PNG
- Finder: show hidden files, extensions, status bar, path bar, search current folder, no .DS_Store on network, list view, show ~/Library
- Dock: 36px icons, auto-hide with no delay, don't rearrange Spaces
- Safari developer tools
- TextEdit plain text mode
- Time Machine: don't offer new disks

### AI Agent Configuration (agents/)

Provides default settings and context for AI coding agents:

- `AGENTS.md` - Context file with development preferences
- `claude-settings.json` - Claude Code settings (plan mode, opus model)
- `cursor-settings.json` - Cursor editor default settings
- `zed-settings.json` - Zed editor default settings (Menlo 14pt, 2-space tabs, format on save)
- `install.sh` - Installs Claude Code CLI and copies configuration files (with don't-overwrite guards to prevent clobbering customizations)

## Important Notes

- The repository targets macOS Sequoia on Apple Silicon (arm64)
- Homebrew paths use `/opt/homebrew/` (Apple Silicon)
- Node version management uses nvm, loaded in shell configs
- All install scripts are idempotent — safe to run multiple times
- Git branch name is integrated into shell prompt with custom colors
