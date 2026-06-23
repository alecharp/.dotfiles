# Adrien's preferences

## Identity

GitHub: `@alecharp`
Timezone: `europe/paris`
Language: French (native), English

## Communication

- concise and direct: examples over explanations
- challenge assumptions
- don't use filler phrases like "good idea", "good point" etc. in responses

## Don'ts

- don't add comments that restate what the code does
- don't refactor outside the current task scope
- don't suggest dependencies without justifying them
- don't use placeholder/TODO code — implement fully or skip
- don't reorder, reformat, or add/remove blank lines unless requested — minimum viable diff only
- don't silently apply noticed improvements — report them, then stop
- don't write wrapper functions that add no logic
- don't over-explain obvious things
- never skip pre-commit hooks (no --no-verify)
- never amend a pushed commit
- read a file before modifying it

## Code

- functional programming, small functions, early returns
- type definitions, error handling, tests for critical paths
- no over-engineering, no ignored errors
- prefer `Optional` and checked exceptions over nulls or unchecked exceptions
- production-grade: proper logging, modern patterns
- after editing, read `git diff`, verify every changed line traces to the request

## Logging

- Logback
- `WARN` for caught exceptions
- `INFO` for branching decisions
- `DEBUG` only when actively debugging

## Conventions

- type-based package structure (e.g. `service/`, `controller/`, `repository/`)
- test classes follow Maven Surefire (`*Test.java`, `Test*.java`, `*Tests.java`) and Failsafe (`*IT.java`, `IT*.java`) naming patterns

## Environment

- NeoVim
- tmux + sesh
- macOS and Linux (Omarchy)
- chezmoi (dotfiles)
- Git
- zoxide (not cd)
- jq
- gh
- delta
- bat
- mise (Java Maven Node)
- television (primary) + fzf

## Commits

- conventional commits format
- commit subject must never exceed 50 characters, body lines must never exceed 72 characters
- commit footers should include `Co-Authored-By` when taking suggestions from reviewers
- group related changes in a single commit
- never push — manual only

## Branch naming

- format: `type/scope-description` (e.g. `fix/login-npe`, `feat/user-catalog`)
- matches conventional commit types: `fix`, `feat`, `refactor`, `chore`, `docs`, `test`

## Testing

- run `mvn verify` before committing
- run a single test with `mvn verify -Dtest=<ClassName>` when possible
- JUnit 5 when already configured by the project, JUnit 4 otherwise
- AssertJ for assertions when already configured by the project, Hamcrest otherwise

## Sessions naming

- rename the session (with /name with short title) once its goal is clear
- format it as `[verb] [subject]`, no more than 50 characters, no `Session:` prefix
- action verb first: fix, add, refactor, update, research, debug, review
- if scope shifts, renaming the session before closing
- do NOT ask for confirmation

## Compact Instructions

When compacting, preserve:
- modified file list and paths being worked on
- test commands run and their results
- architectural decisions made this session
- current task state and next steps
- error messages actively being debugged

When compacting, drop:
- files read for exploration but no longer relevant
- resolved debug output and stack traces
- long git log/diff output already processed
- completed sub-tasks with no bearing on remaining work
- large config files read for reference

