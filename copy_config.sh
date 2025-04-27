#!/bin/bash

# Source directory
source_dir="./config"

# Destination directory
dest_dir="$HOME/.config"

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

# Iterate through each directory in the source directory
for dir in "$source_dir"/*; do
  # Check if it's a directory
  if [ -d "$dir" ]; then
    # Get the directory name
    dir_name=$(basename "$dir")

    # Construct the destination path
    dest_path="$dest_dir/$dir_name"

    # Skip shell scripts and markdown files
    if [[ "$dir_name" == *.sh || "$dir_name" == *.md ]]; then
      echo "Skipping '$dir_name'..."
      continue
    fi

    # Copy the directory recursively
    echo "Copying '$dir_name' to '$dest_dir'..."
    cp -r "$dir" "$dest_dir"

    echo "Successfully copied '$dir_name' to '$dest_dir'."
  fi
done

echo "All directories in '$source_dir' copied to '$dest_dir'."

exit 0
