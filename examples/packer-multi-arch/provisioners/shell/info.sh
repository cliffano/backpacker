#!/bin/sh
set -o errexit
set -o nounset

echo "Ansible path: $(command -v ansible)"
echo "BackpackerExample path: $(command -v backpackerexample)"

echo "Ansible version: $(ansible --version)"
echo "BackpackerExample sample output:"
backpackerexample --message 'Hello World'
