#!/bin/bash
# Find the .ido4shape workspace directory
# Works in both Cowork VM and Claude Code CLI

# In Cowork VM: find the user's mounted project folder
if [ "${CLAUDE_CODE_IS_COWORK}" = "1" ] && [ -d "/sessions" ]; then
  SESSION_NAME=$(basename "$HOME")
  for dir in "/sessions/$SESSION_NAME/mnt"/*/; do
    [ -d "$dir" ] || continue
    case "$dir" in
      */.local-plugins/*|*/.claude/*|*/.skills/*|*/.remote-plugins/*|*/uploads/*) continue ;;
    esac
    if [ -d "${dir}.ido4shape" ]; then
      echo "${dir}.ido4shape"
      exit 0
    fi
  done
fi

# Claude Code CLI: check current directory
if [ -d ".ido4shape" ]; then
  echo "$(pwd)/.ido4shape"
  exit 0
fi

# Not found
exit 1
