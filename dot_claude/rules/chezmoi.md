---
triggers:
  - dotfiles
  - chezmoi
---

# Chezmoi Dotfiles

When asked to modify, update, or create any dotfile managed by chezmoi:

1. Make the requested changes
2. Ask: "Done — want to test before I commit?"
3. Wait for explicit confirmation that things work as expected
4. Only then invoke the `chezmoi-commit` skill
