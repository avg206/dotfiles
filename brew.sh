#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install Node.js versions manager
curl -fsSL https://fnm.vercel.app/install | bash

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install newer version of ruby
brew install ruby

# Install cocoapods in Mx systems
sudo gem install -n /usr/local/bin cocoapods

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools

# Install other useful binaries.
brew install git
brew install git-lfs
brew install ssh-copy-id
brew install tree
brew install difftastic

# Remove outdated versions from the cellar.
brew cleanup
