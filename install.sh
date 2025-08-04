#!/bin/bash

SCRIPT_NAME="del"
TARGET_DIR="/usr/local/bin"
TARGET_PATH="$TARGET_DIR/$SCRIPT_NAME"

# Check if python3 is installed
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed. Please install it first."
    exit 1
fi

# Check if the 'del' script exists in the current directory
if [ ! -f "$SCRIPT_NAME" ]; then
    echo "Error: File '$SCRIPT_NAME' not found in the current directory."
    exit 1
fi

# Copy the script to /usr/local/bin
echo "Copying $SCRIPT_NAME to $TARGET_DIR..."
sudo cp "$SCRIPT_NAME" "$TARGET_PATH"

# Give executable permission
sudo chmod +x "$TARGET_PATH"

# Check if the copy was successful
if [ -f "$TARGET_PATH" ]; then
    echo "Installation completed successfully!"
    echo "You can use the '$SCRIPT_NAME' command anywhere in the terminal."
else
    echo "Error: installation failed."
    exit