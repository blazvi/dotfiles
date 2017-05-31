#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew tap caskroom/versions

brew install zsh
brew install zsh-completions
brew install antigen

sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s /usr/local/bin/zsh

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

brew cask install java
brew cask install xquartz
brew cask install iterm2
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install android-file-transfer
brew cask install atom
brew cask install dropbox
brew cask install evernote
brew cask install filezilla
brew cask install firefox
brew cask install garmin-communicator
brew cask install google-drive
brew cask install handbrake
brew cask install imagealpha
brew cask install imageoptim
brew cask install jaikoz
brew cask install kindle
brew cask install mattr-slate
brew cask install messenger
brew cask install opera
brew cask install skype
brew cask install slack
brew cask install sourcetree
brew cask install tunnelblick
brew cask install virtualbox
brew cask install vlc
brew cask install tripmode
brew cask install teamviewer
brew cask install charless


# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install autojump
brew install ack
brew install dark-mode
brew install git
brew install imagemagick --with-webp
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli
brew install nvm
brew install rename
brew install youtube-dl

# Remove outdated versions from the cellar.
brew cleanup
