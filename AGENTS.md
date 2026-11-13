# Agent Guidelines

This repository contains Offdelay’s documentation site.
See [README.md](README.md) for setup and contribution instructions.

## Workflow

- Inspect relevant files and follow existing patterns.
- Keep changes focused; avoid unrelated edits.
- For documentation tasks, apply the relevant skill in `.agents/skills/`:
  - `docs-authoring` for writing or editing documentation.
  - `module-authoring` when creating or editing a module page under `docs/modules/`.
  - `image-naming` when adding, renaming, or referencing documentation images.
  - `zensical` when building, serving, or configuring the site.

## Routing

- Add or edit documentation pages under `docs/`.
- When adding, removing, or renaming a page, update the site navigation in the project config.
- Follow the existing `navigation.sections` structure for sidebar sections.

## Validation

- For documentation or site-configuration changes, run the strict docs build check.
- Report which checks you ran and any that you could not run.

## Commits

- Keep commits focused and use a clear, descriptive message.
- Don’t commit unless asked.
