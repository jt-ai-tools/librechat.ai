#!/bin/bash

# Find all original .md and .mdx files
ORIGINAL_FILES=$(find . -type f \( -name "*.md" -o -name "*.mdx" \) \
  ! -path "*/node_modules/*" \
  ! -path "*/.git/*" \
  ! -name "PROGRESS.md" \
  ! -name "*_zh_TW.md" \
  ! -name "*_zh_TW.mdx" | sort)

TOTAL=$(echo "$ORIGINAL_FILES" | grep -c .)
TRANSLATED=0
MISSING=()

for file in $ORIGINAL_FILES; do
  ext="${file##*.}"
  base="${file%.*}"
  translated_file="${base}_zh_TW.${ext}"
  
  if [ -f "$translated_file" ]; then
    ((TRANSLATED++))
  else
    MISSING+=("$file")
  fi
done

if [ "$TOTAL" -eq 0 ]; then
    echo "No files found to translate."
    exit 0
fi

echo "Translation Progress: $TRANSLATED / $TOTAL ($((TRANSLATED * 100 / TOTAL))%)"
echo "------------------------------------------"
if [ ${#MISSING[@]} -eq 0 ]; then
  echo "All files have been translated!"
else
  echo "Pending files:"
  for file in "${MISSING[@]}"; do
    echo "  - $file"
  done
fi
