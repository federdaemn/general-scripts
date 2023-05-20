# 2.1-general-scripts

General scripts to manage and setup my systems

## Tools

### Nix

#### Setup Nix

* install Nix with dnkmmr69420's setup scripts `bash <(curl-s https://federdaemn.github.io/2.1-general-scripts/tools/nix/setup/install-nix.sh)>`

### Fleek

#### Setup Fleek

* ask if SSH-Key is available (recommended) `bash <(curl-s https://federdaemn.github.io/2.1-general-scripts/tools/nix/setup/install.sh)>`
* assume that SSH-Key for GitHub is available `bash <(curl-s https://federdaemn.github.io/2.1-general-scripts/tools/nix/setup/install-no-consent.sh)>`

**Both scripts also install Nix.**

## Files for other repositories

### federdaemn/2.1-ublue-merkuros

* vscode.repo: import this .repo file in recipe.yml
* ? easier updates and less duplicated files

## GitHub inbuilts

### Actions

* Action "Automatically fast forward merge repositories" is used by
  * keeping the template branch of federdaemn/2.1-ublue-merkuros up-to-date
