#!/bin/sh
set -o errexit
set -o nounset

echo "Python path: $(command -v python3)"
echo "Ansible path: $(command -v ansible)"
echo "BackpackerExample path: $(command -v backpackerexample)"

echo "Python version: $(python3 --version)"
echo "Ansible version: $(ansible --version)"
echo "BackpackerExample sample output:"
backpackerexample --message 'Hello World'
