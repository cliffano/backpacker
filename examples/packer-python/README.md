<!-- BEGIN:AVATAR -->
![Avatar](avatar.jpg)
<!-- END:AVATAR -->

<!-- BEGIN:BADGES -->
[![Build Status](https://github.com/cliffano/backpackerexample/workflows/CI/badge.svg)](https://github.com/cliffano/backpackerexample/actions?query=workflow%3ACI)
[![Code Scanning Status](https://github.com/cliffano/backpackerexample/workflows/CodeQL/badge.svg)](https://github.com/cliffano/backpackerexample/actions?query=workflow%3ACodeQL)
[![Security Status](https://snyk.io/test/github/cliffano/backpackerexample/badge.svg)](https://snyk.io/test/github/cliffano/backpackerexample)
[![Published Version](https://img.shields.io/docker/v/cliffano/backpackerexample.svg)](https://hub.docker.com/r/cliffano/backpackerexample/)
[![Docker Pulls Count](https://img.shields.io/docker/pulls/cliffano/backpackerexample.svg)](https://hub.docker.com/r/cliffano/backpackerexample/)
<!-- END:BADGES -->

# BackpackerExample

BackpackerExample is an example Packer-built machine image for backpacker.

This image provides `backpackerexample`, a command-line message transformer that
prints the original message plus reverse, uppercase, and lowercase variants.

## Installation

Pull the Docker image from Docker Hub:

```shell
docker pull cliffano/backpackerexample
```

Or alternatively, you can build the Docker image locally:

```shell
git clone https://github.com/cliffano/backpackerexample
cd backpackerexample
make build-docker
```

## Usage

Run container using default message (`Hello World`):

```shell
docker run --rm cliffano/backpackerexample
```

Run container using a custom message:

```shell
docker run --rm cliffano/backpackerexample --message 'Hello Packer'
```

Example output:

```yaml
Original: Hello Packer
Reverse: rekcaP olleH
Uppercase: HELLO PACKER
Lowercase: hello packer
```

## Colophon

<!-- BEGIN:DEVELOPERS_GUIDE -->
[Developer's Guide](https://cliffano.github.io/developers-guide-packer.html)
<!-- END:DEVELOPERS_GUIDE -->

<!-- BEGIN:BUILD_REPORTS -->
Build reports:

* [Build report](https://cliffano.github.io/backpackerexample/index.html)
<!-- END:BUILD_REPORTS -->
