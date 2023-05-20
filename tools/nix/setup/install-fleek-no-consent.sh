#!/usr/bin/env bash
# Install Nix, Fleek
# You *must* be able to use git via SSH with GitHub!

# To use this script run `bash <(curl-s https://federdaemn.github.io/2.1-general-scripts/tools/nix/setup/install-no-consent.sh)>`

## Tell this script to exit if there are any errors.
set -oue pipefail

## Install Nix
bash <(curl -s https://raw.githubusercontent.com/dnkmmr69420/nix-installer-scripts/main/installer-scripts/silverblue-nix-installer.sh)

## Join Fleek Repo and apply
nix run github:ublue-os/fleek -- join --apply git@github.com:federdaemn/1-dot-fleek.git