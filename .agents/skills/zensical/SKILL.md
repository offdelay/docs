---
name: zensical
description: Build, serve, and configure this Zensical documentation site.
---

# Zensical

Commands, configuration, and structure for the Offdelay docs site.

## Commands

- `uvx zensical serve` — live preview on http://localhost:8000
- `uvx zensical build` — build into `site/`
- `uvx zensical build --clean --strict` — clean build and fail on warnings

## Configuration

- Config: `zensical.toml` (TOML). Site settings live under `[project]`,
  theme under `[project.theme]`, palettes are `[[project.theme.palette]]`.
- `nav` (under `[project]`) controls the header tabs and left sidebar.
- `docs_dir = "docs"`, `site_dir = "site"`.
- Run Zensical with `uvx`; do not install it globally or add it as a project
  dependency.

## Conventions

- Add new pages under `docs/` and register them in `nav`.
- Use `icon:` front matter on section `index.md` pages (with the
  `navigation.indexes` feature) to show icons in the sidebar.
- The `CNAME` file in `docs/` is copied to the built site for the custom
  domain `docs.offdelay.be`.
