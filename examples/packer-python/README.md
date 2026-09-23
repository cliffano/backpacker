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

It installs the [certilizer](https://github.com/cliffano/certilizer) CLI on top of
`python:3.12-alpine3.22`, used here as a stand-in since there's no real
`backpackerexample` package to install.

## Installation

Pull the image from Docker Hub:

```shell
docker pull cliffano/backpackerexample
```

Or alternatively, build the image yourself:

```shell
git clone https://github.com/cliffano/backpackerexample
cd backpackerexample
make deps build-docker
```

An image with `cliffano/backpackerexample` repository and `latest` tag should show up:

```text
docker images

REPOSITORY                   TAG      IMAGE ID       CREATED         SIZE
cliffano/backpackerexample   1.2.3    50f465597fd9   2 minutes ago   180MB
cliffano/backpackerexample   latest   50f465597fd9   2 minutes ago   180MB
```

## Usage

Run a container using the cliffano/backpackerexample image:

```shell
docker run --rm cliffano/backpackerexample --help
```

## Colophon

<!-- BEGIN:DEVELOPERS_GUIDE -->
[Developer's Guide](https://cliffano.github.io/developers-guide-packer.html)
<!-- END:DEVELOPERS_GUIDE -->

<!-- BEGIN:BUILD_REPORTS -->
Build reports:

* [Build report](https://cliffano.github.io/backpackerexample/index.html)

<!-- END:BUILD_REPORTS -->
