#!/bin/bash
# Find all .md and .mdx files, excluding PROGRESS.md and node_modules
# Also excluding already translated _zh_TW files to see what's left
find . -type f \( -name "*.md" -o -name "*.mdx" \) \
  ! -path "*/node_modules/*" \
  ! -path "*/.git/*" \
  ! -name "PROGRESS.md" \
  ! -name "*_zh_TW.md" \
  ! -name "*_zh_TW.mdx" \
  | sort
