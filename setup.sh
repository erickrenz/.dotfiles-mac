#!/bin/bash

# Verify package manager
if [[ -e /usr/local/bin/brew ]]; then
    echo "[1/4] Updating packages..."
    brew update -q
    brew upgrade -q
else
    echo "The homebrew package manager is required for this script."
    exit
fi

# Install andible dependencies
echo "[2/4] Installing dependencies..."
brew install git ansible -q

# Clone this repository
echo "[3/4] Cloning repository..."
cd /Users/erickrenz/
git clone -q https://github.com/erickrenz/.dotfiles-mac.git
cd /Users/erickrenz/.dotfiles-mac/

# Run ansible playbook
echo "[4/4] Running playbook..."
ansible-playbook playbook.yaml
