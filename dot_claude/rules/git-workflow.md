---
---

# Git workflow

## Commits

- conventional commits format
- one logical change per commit
- subject ≤ 50 chars, body lines ≤ 72 chars
- use `fixup!` commits for WIP; fold with `rebase --autosquash` before pushing
- commits that fix unpushed commits must be squashed immediately after the edit
- group related changes in a single commit
- include `Co-Authored-By` footer when taking suggestions from reviewers
- `:tada:` is the acceptable commit type for the very first commit of a new git repository

## Branching

- format: `type/scope-description` (e.g. `fix/login-npe`, `feat/user-catalog`)
- types: `fix`, `feat`, `refactor`, `chore`, `docs`, `test`

## Integrating upstream changes

- rebase onto the target branch while the branch is local-only
- once pushed and shared, merge instead (never rewrite public history)
- never force push

## Landing a PR

- always push branch to my personal account, creating a fork if required
- squash merge into main
- delete the remote branch immediately after merge; clean up local with `git branch -d`

## Parallel work

- worktrees for parallel work — never stash long-lived changes
