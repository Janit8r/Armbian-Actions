#!/bin/bash
# Fix Windows line endings (CRLF) to Unix line endings (LF)
# This script fixes all configuration files in the patch directory

echo "Fixing line endings for all configuration files..."

# Fix all .conf, .config, .cmd, .sh files in patch directory
find patch -type f \( -name "*.conf" -o -name "*.config" -o -name "*.cmd" -o -name "*.sh" \) -exec sed -i 's/\r$//' {} \;

echo "Line endings fixed successfully."
echo "Files processed:"
find patch -type f \( -name "*.conf" -o -name "*.config" -o -name "*.cmd" -o -name "*.sh" \) -exec echo "  - {}" \;
