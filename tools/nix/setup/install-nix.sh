#!/usr/bin/env bash
# Install Nix

# To use this script run `bash <(curl-s https://federdaemn.github.io/general-scripts/tools/nix/setup/install-nix.sh)>`

## Tell this script to exit if there are any errors.
set -oue pipefail

## Install Nix
bash <(curl -s https://raw.githubusercontent.com/dnkmmr69420/nix-installer-scripts/main/installer-scripts/silverblue-nix-installer.sh)
