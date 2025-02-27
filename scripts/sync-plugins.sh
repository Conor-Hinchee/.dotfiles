#!/bin/bash

SOURCE_DIR="/Users/moarwaffles/Dev/Sandbox/.obsidian/plugins"
TARGET_DIR="/Users/moarwaffles/Documents/obsidian/Conor/.obsidian/plugins"

for plugin in "$SOURCE_DIR"/*; do
  if [ -d "$plugin" ]; then
    plugin_name=$(basename "$plugin")
    mkdir -p "$TARGET_DIR/$plugin_name"
    cp "$plugin/main.js" "$TARGET_DIR/$plugin_name/" 2>/dev/null
    cp "$plugin/styles.css" "$TARGET_DIR/$plugin_name/" 2>/dev/null
    cp "$plugin/manifest.json" "$TARGET_DIR/$plugin_name/" 2>/dev/null
  fi
done
