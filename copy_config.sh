#!/bin/bash

# Source directory
source_dir="./config"

# Destination directory
dest_dir="$HOME/.config"

# Check if .vim directory exists and copy it
if [ -d "$source_dir/.vim" ]; then
  echo "Copying '.vim' to '$HOME'..."
  cp -r "$source_dir/.vim" "$HOME"
  echo "Successfully copied '.vim' to '$HOME'."
fi

# Check if source directory exists
if [ ! -d "$source_dir" ]; then
  echo "Error: Source directory '$source_dir' does not exist."
  exit 1
fi

# Check if destination directory exists
if [ ! -d "$dest_dir" ]; then
  echo "Creating destination directory '$dest_dir'..."
  mkdir -p "$dest_dir"
fi

# Iterate through each item in the source directory
for item in "$source_dir"/*; do
  # Get the item name
  item_name=$(basename "$item")

  # Skip shell scripts and markdown files
  if [[ "$item_name" == *.sh || "$item_name" == *.md ]]; then
    echo "Skipping '$item_name'..."
    continue
  fi

  # Copy the item (directory or file) recursively
  echo "Copying '$item_name' to '$dest_dir'..."
  cp -r "$item" "$dest_dir"

  echo "Successfully copied '$item_name' to '$dest_dir'."
done

echo "All directories in '$source_dir' copied to '$dest_dir'."

exit 0
