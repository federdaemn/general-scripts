#!/usr/bin/env bash
# Install Nix, Fleek

# To use this script run `bash <(curl-s https://federdaemn.github.io/2.1-general-scripts/tools/nix/setup/install.sh)>`

## Tell this script to exit if there are any errors.
set -oue pipefail

## Ask if GitHub CLI should initiate a login, if GitHub CLI is installed. If yes direct the user to generate a new SSH-Key.

if command -v gh &> /dev/null
then
    echo "GitHub CLI was detected. Shall a login be initiated? If you do not have a working SSH-Key for GitHub please create one. (y/n)"
    read login
    if [ "$login" != "${login#[Yy]}" ]
    then
      gh auth login
    fi
fi

## Ask if git is configured with GitHub SSH (create new SSH-Key with GitHub CLI)
### Needed for Fleek

echo "Is git configured with a GitHub SSH-Key? If not create one with GitHub CLI (preinstalled) (y/n)?"
read answer
if [ "$answer" != "${answer#[Yy]}" ]
then
    echo "Installation continues!"
else
    echo "Installation aborted!"
    exit 1
fi

## Install Nix
bash <(curl -s https://raw.githubusercontent.com/dnkmmr69420/nix-installer-scripts/main/installer-scripts/silverblue-nix-installer.sh)

## Join Fleek Repo and apply
nix run github:ublue-os/fleek -- join --apply git@github.com:federdaemn/1-dot-fleek.git