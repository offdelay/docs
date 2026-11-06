# Translations (i18n)

Basic scaffolding for managing documentation translations.

## Approach

Zensical builds one locale per configuration. The current site is English
and lives directly under `docs/`.

To add a locale (e.g. Dutch):

1. Mirror the source tree under `docs/<locale>/` (e.g. `docs/nl/`).
2. Build the locale with `theme.language = "<locale>"` — see
   https://zensical.org/docs/setup/language/.

## Helpers

- `scripts/i18n/check.sh <locale>` — lists English pages missing a
  counterpart in `docs/<locale>/`.
