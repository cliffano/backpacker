#!/usr/bin/env bash
set -o errexit
set -o nounset

printf "\n\n========================================\n"
printf "Run the built Docker image and verify its CLI\n"

image="cliffano/backpackerexample:latest"
output="$(docker run --rm "$image" --help)"

expected_substring="Usage: certilizer [OPTIONS]"
if [[ "$output" != *"$expected_substring"* ]]; then
  printf "FAIL: docker run %s --help - expected output to contain '%s', got:\n%s\n" "$image" "$expected_substring" "$output"
  exit 1
fi

printf "OK: %s responded with expected usage output\n" "$image"
