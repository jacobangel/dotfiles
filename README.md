# Dotfiles

Personal dotfiles for macOS (Apple Silicon). Topic-based organization — each topic lives in its own directory with an `install.sh` script.

## Setup

```bash
git clone git@github.com:jacobangel/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./scripts/build.sh
```

**Prerequisite:** [Homebrew](https://brew.sh) must be installed first.

## Topics

| Topic | What it does |
|-------|-------------|
| `agents/` | AI coding agent configs (Claude Code, Cursor, AGENTS.md) |
| `bash/` | Bash shell configuration and git completion |
| `git/` | Global git config, aliases, and modern defaults |
| `ghostty/` | Ghostty terminal emulator config |
| `homebrew/` | Brewfile with dev tool dependencies |
| `osx/` | macOS system preferences (Sequoia) |
| `vim/` | vim-plug setup with sensible defaults |
| `zsh/` | Zsh shell configuration with oh-my-zsh |

## How it works

`scripts/build.sh` discovers and runs every `install.sh` in the topic directories. Install scripts are idempotent — safe to run multiple times.

## Adding a new topic

1. Create a directory: `mkdir mytopic`
2. Add an `install.sh` inside it
3. Run `./scripts/build.sh`
