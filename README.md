<img align="right" src="https://raw.github.com/cliffano/backpacker/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/cliffano/backpacker/actions/workflows/ci-workflow.yaml/badge.svg)](https://github.com/cliffano/backpacker/actions/workflows/ci-workflow.yaml)
<br/>

Backpacker
----------

Backpacker is a Makefile for building Packer-based machine images.
It provides utility targets for linting, building, and testing the machine images.

Have a look at [BackpackerExample](examples/) as an example project which uses Backpacker.

Installation
------------

1. Download `src/Makefile-backpacker` as the `Makefile` of your project:
    `curl https://raw.githubusercontent.com/cliffano/backpacker/main/src/Makefile-backpacker -o Makefile`
2. Create configuration file `backpacker.yml` with properties described in [Configuration](#configuration) section
3. Run the available `Makefile` targets described in [Usage](#usage) section

Configuration
-------------

Create backpacker configuration file called `backpacker.yml` with contains the following properties:

| Property | Description | Example |
|----------|-------------|---------|
| image.name | The name of the machine image | `someimage` |
| image.version | The version of the machine image | `1.2.3` |
| author | The author of the package | `Some Author` |
| dockerhub.username | The username of Docker Hub account to publish the Docker machine image to | `cliffano` |

Usage
-----

The following targets are available:

| Target | Description |
|--------|-------------|
| ci | CI target to be executed by CI/CD tool, end to end build of the machine package |
| stage | Ensure logs directory exists |
| clean | Remove all temporary (staged, generated) files |
| deps | Retrieve Python dependencies and Packer plugins |
| deps-upgrade | Upgrade Python dependencies |
| deps-extra-apt | Install extra tools using `apt`: Python [VirtualEnv](https://virtualenv.pypa.io/) |
| rmdeps | Remove .venv/ directory |
| update-to-latest | Update Makefile to the latest version tag |
| update-to-main | Update Makefile to the main branch |
| update-to-version | Update Makefile to the version defined in `TARGET_backpacker_VERSION` parameter |
| lint | Run lint checks against source and test code using [Packer validate](https://developer.hashicorp.com/packer/docs/commands/validate), [Ansible Lint](https://ansible.readthedocs.io/projects/lint/), [yamllint](https://github.com/adrienverge/yamllint), json.tool, [ShellCheck](https://github.com/koalaman/shellcheck) |
| test | Alias to test-docker |
| test-docker | Test Docker image with [Testinfra](https://testinfra.readthedocs.io/en/latest/) |
| release-major | Create a major release using [rtk](https://github.com/cliffano/rtk) |
| release-minor | Create a minor release using [rtk](https://github.com/cliffano/rtk) |
| release-patch | Create a patch release using [rtk](https://github.com/cliffano/rtk) |
| build-docker | Build Docker image using [Packer](https://developer.hashicorp.com/packer) |
| publish-docker | Publish Docker image to [Docker Hub](https://hub.docker.com/) |

Colophon
--------

Related Projects:

* [generator-packer](https://github.com/cliffano/generator-packer) - Packer machine image projects generator using Plop
