#!/bin/bash

# Update package lists
echo "--- Updating package lists ---"
apt update

# Upgrade all installed packages
echo "--- Upgrading packages ---"
apt upgrade -y

# Remove no-longer-needed dependencies
echo "--- Removing old dependencies ---"
apt autoremove -y

echo "--- Install sudoInstall sudo---"
apt update && apt install sudo -y

echo "--- Install makefile---"
sudo apt install build-essential -y

# Clean up downloaded package files
echo "--- Cleaning up cache ---"
apt autoclean

echo "--- Update process complete ---"
