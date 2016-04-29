#!/bin/bash

# Sets up the environment for deploying.

# Exit if anything fails
set -e
set -o nounset

# Install packer
echo "Installing Maven!"

sudo apt-get install maven

maven version

