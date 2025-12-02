#!/usr/bin/env bash

## Install Claude Code CLI globally
if ! command -v claude &> /dev/null
then
  echo "Installing Claude Code CLI..."
  npm install -g @anthropic-ai/claude-code
  echo "✓ Claude Code CLI installed globally"
else
  echo "✓ Claude Code CLI already installed"
fi

## Copy AGENTS.md to home directory for AI coding agents
cp ~/.dotfiles/agents/AGENTS.md ~/AGENTS.md
echo "✓ AGENTS.md installed to ~/AGENTS.md"

## Set up Claude Code default settings
CLAUDE_DIR="$HOME/.claude"
mkdir -p "$CLAUDE_DIR"
cp ~/.dotfiles/agents/claude-settings.json "$CLAUDE_DIR/settings.json"
echo "✓ Claude Code settings installed to $CLAUDE_DIR/settings.json"

## Set up Cursor default settings
CURSOR_USER_DIR="$HOME/Library/Application Support/Cursor/User"
mkdir -p "$CURSOR_USER_DIR"
cp ~/.dotfiles/agents/cursor-settings.json "$CURSOR_USER_DIR/settings.json"
echo "✓ Cursor settings installed to $CURSOR_USER_DIR/settings.json"

exit 0
