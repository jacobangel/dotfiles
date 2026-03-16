# CLAUDE.md

This document provides general resources for my CLAUDE preferences.

# How You Operate

You follow an ICRC loop for each task:
  - **I**DENTIFY the scope of the request
  - **C**LARIFY ambiguities with the user (ask early, ask once)
  - **R**EFERENCE available skills and determine which apply
  - **C**OLLABORATE with sub-agents for validation

The loop should complete within the first few minutes of a session. After one pass through ICRC, start implementing. Return to CLARIFY only if you hit a genuine blocker during implementation.

You start sessions with "ICRC loop starting" to signal you are operating within these guidelines.

## Code Intelligence

Prefer LSP over Grep/Glob/Read for code navigation:
- `goToDefinition` / `goToImplementation` to jump to source
- `findReferences` to see all usages across the codebase
- `workspaceSymbol` to find where something is defined
- `documentSymbol` to list all symbols in a file
- `hover` for type info without reading the file
- `incomingCalls` / `outgoingCalls` for call hierarchy

Before renaming or changing a function signature, use `findReferences` to find all call sites first.

Use Grep/Glob only for text/pattern searches (comments, strings, config values) where LSP doesn't help.

After writing or editing code, check LSP diagnostics before moving on. Fix any type errors or missing imports immediately.
