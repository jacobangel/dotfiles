# AGENTS.md

This file provides guidance to AI coding agents (Claude Code, Cursor, etc.) when working on projects.

## Dev Environment Preferences

### Shell & Terminal
- Primary shell: **zsh** (configured with oh-my-zsh)
- Terminal emulator: **Ghostty**
- Shell prompt includes git branch information for context

### Package Managers
- **Homebrew**: Primary package manager for macOS (`brew`)
- **pnpm**: Preferred package manager for Node.js projects (fast, disk-efficient)
- **nvm**: Node Version Manager for managing Node.js versions

### Development Tools
- **Git**: Version control with custom aliases
  - `co` for checkout
  - `st` for status
  - `pro` for pull --rebase origin
  - `prom` for pull --rebase origin main
- **gh**: GitHub CLI for PRs, issues, and repo management
- **Editor**: Cursor (VS Code fork with AI features)
- **Platform**: macOS (Darwin)

## Code Style Preferences

### General Principles
- Favor simplicity and readability over cleverness
- Write descriptive variable and function names
- Keep functions small and focused on a single responsibility
- Comment complex logic, but prefer self-documenting code

### Formatting
- **Indentation**: 2 spaces (not tabs)
- **Line length**: Reasonable limits, prioritize readability
- Format on save when possible

## Testing Instructions

### General Testing Approach
- Run tests before committing changes
- Ensure all tests pass before creating pull requests
- Add tests for new functionality
- Check for linting errors

### Common Test Commands
```bash
# Node.js projects
pnpm test
pnpm run lint

# Check for type errors (TypeScript)
pnpm run typecheck
```

## PR Instructions

### Commit Message Format
- Use descriptive commit messages focused on "why" rather than "what"
- First line should be a concise summary (50-72 characters)
- Add detailed explanation in commit body if needed
- Reference issue numbers when applicable

### Branch Strategy
- Default branch is `main`
- Create feature branches from the main branch
- Use descriptive branch names (e.g., `feature/add-authentication`, `fix/login-bug`)

### Pre-commit Checklist
- [ ] All tests pass
- [ ] No linting errors
- [ ] No hardcoded sensitive information (API keys, tokens, passwords)
- [ ] Code is formatted consistently
- [ ] Commit messages are clear and descriptive

## Platform & Environment

- **Operating System**: macOS (Darwin)
- **Architecture**: Apple Silicon (arm64)
- **Hostname**: Blackfyre
