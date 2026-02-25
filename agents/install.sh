#!/usr/bin/env bash

## Install Claude Code CLI globally
if command -v claude &> /dev/null; then
  echo "Claude Code CLI already installed"
elif command -v npm &> /dev/null; then
  echo "Installing Claude Code CLI..."
  npm install -g @anthropic-ai/claude-code
  echo "Claude Code CLI installed globally"
else
  echo "npm not found, skipping Claude Code CLI install"
fi

## Copy AGENTS.md to home directory (don't overwrite existing)
if [ ! -f ~/AGENTS.md ]; then
  cp ~/.dotfiles/agents/AGENTS.md ~/AGENTS.md
  echo "AGENTS.md installed to ~/AGENTS.md"
else
  echo "~/AGENTS.md already exists, skipping"
fi

## Set up Claude Code default settings (don't overwrite existing)
CLAUDE_DIR="$HOME/.claude"
mkdir -p "$CLAUDE_DIR"
if [ ! -f "$CLAUDE_DIR/settings.json" ]; then
  cp ~/.dotfiles/agents/claude-settings.json "$CLAUDE_DIR/settings.json"
  echo "Claude Code settings installed to $CLAUDE_DIR/settings.json"
else
  echo "$CLAUDE_DIR/settings.json already exists, skipping"
fi

## Set up Cursor default settings (don't overwrite existing)
CURSOR_USER_DIR="$HOME/Library/Application Support/Cursor/User"
mkdir -p "$CURSOR_USER_DIR"
if [ ! -f "$CURSOR_USER_DIR/settings.json" ]; then
  cp ~/.dotfiles/agents/cursor-settings.json "$CURSOR_USER_DIR/settings.json"
  echo "Cursor settings installed to $CURSOR_USER_DIR/settings.json"
else
  echo "$CURSOR_USER_DIR/settings.json already exists, skipping"
fi

exit 0
