#!/usr/bin/env bash
set -euo pipefail

OUTPUT_STORIES="export_pribehy.txt"
OUTPUT_OBJECTS="export_objekty.txt"
OUTPUT_OTHER="export_ostatni.txt"

rm -f "$OUTPUT_STORIES" "$OUTPUT_OBJECTS" "$OUTPUT_OTHER"

aggregate() {
  local dir="$1"
  local target="$2"
  find "$dir" -type f \( -name "*.txt" -o -name "*.md" \) -print0 | sort -z | while IFS= read -r -d '' file; do
    printf '##### %s #####\n' "${file#./}" >> "$target"
    cat "$file" >> "$target"
    printf '\n\n' >> "$target"
  done
}

aggregate "Příběhy" "$OUTPUT_STORIES"
aggregate "Objekty" "$OUTPUT_OBJECTS"

find . -type f \( -name "*.txt" -o -name "*.md" \) \
  ! -path "./Příběhy/*" ! -path "./Objekty/*" \
  ! -path "./.git/*" \
  ! -name "$OUTPUT_STORIES" ! -name "$OUTPUT_OBJECTS" ! -name "$OUTPUT_OTHER" \
  ! -name "export.sh" \
  -print0 | sort -z | while IFS= read -r -d '' file; do
    printf '##### %s #####\n' "${file#./}" >> "$OUTPUT_OTHER"
    cat "$file" >> "$OUTPUT_OTHER"
    printf '\n\n' >> "$OUTPUT_OTHER"
  done
