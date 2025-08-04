#!/bin/bash

SCRIPT_NAME="del"
TARGET_PATH="/usr/local/bin/$SCRIPT_NAME"

# Check if the script is installed
if [ ! -f "$TARGET_PATH" ]; then
    echo "The command '$SCRIPT_NAME' is not installed at $TARGET_PATH."
    exit 1
fi

# Ask for confirmation
read -p "Are you sure you want to uninstall '$SCRIPT_NAME'? [y/N]: " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "Uninstallation cancelled."
    exit 0
fi

# Try to remove the file
echo "Removing $TARGET_PATH..."
sudo rm "$TARGET_PATH"

# Check if it was successfully removed
if [ ! -f "$TARGET_PATH" ]; then
    echo "Uninstallation completed successfully."
else
    echo "Error: failed to