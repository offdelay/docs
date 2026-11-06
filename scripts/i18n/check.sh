#!/usr/bin/env bash
# Report English pages that are missing a translation under docs/<locale>.
# Usage: scripts/i18n/check.sh <locale>
set -euo pipefail

LOCALE="${1:-}"
if [[ -z "$LOCALE" ]]; then
  echo "Usage: $0 <locale>   # e.g. nl, fr, de" >&2
  exit 1
fi

SOURCE_DIR="docs"
TARGET_DIR="docs/${LOCALE}"

missing=0
while IFS= read -r file; do
  rel="${file#"${SOURCE_DIR}"/}"
  if [[ ! -f "${TARGET_DIR}/${rel}" ]]; then
    echo "MISSING ${TARGET_DIR}/${rel}" >&2
    missing=$((missing + 1))
  fi
done < <(find "${SOURCE_DIR}" -name '*.md' -not -path "docs/${LOCALE}/*" | sort)

echo "Missing translations: ${missing}"
[[ "${missing}" -eq 0 ]]
