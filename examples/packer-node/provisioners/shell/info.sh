#!/bin/sh
set -o errexit
set -o nounset

echo "Node path: $(command -v node)"
echo "Python path: $(command -v python3)"
echo "Ansible path: $(command -v ansible)"
echo "BackpackerExample path: $(command -v backpackerexample)"

echo "Node version: $(node --version)"
echo "Python version: $(python3 --version)"
echo "Ansible version: $(ansible --version)"
echo "BackpackerExample sample output:"
backpackerexample --message 'Hello World'
