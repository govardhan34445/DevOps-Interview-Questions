#!/bin/bash

# Check if source and destination arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <source> <destination>"
    exit 1
fi

# Read source and destination arguments
source_path="$1"
destination_path="$2"

# Create destination directory if it does not exist
if [ ! -d "$destination_path" ]; then
    mkdir -p "$destination_path"
fi

# Copy files from source to destination
cp -r "$source_path"/* "$destination_path"

echo "Files copied successfully from $source_path to $destination_path."
