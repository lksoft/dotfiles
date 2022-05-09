# Install needed taps
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/core"
tap "homebrew/services"
tap "homebrew/cask-fonts"
tap "buo/cask-upgrade"
tap "shivammathur/php"

# Mac App Store
brew "mas"

# Basic useful commands
brew "bash"
brew "git"
brew "lynx"
brew "autoconf"
brew "wget"
brew "xz"
brew "awscli"
brew "libidn2"
brew "exiftool"
brew "fish"
brew "unixodbc"
brew "git-flow-avh"
brew "jq"
brew "libusb-compat"
brew "terminal-notifier"
brew "uncrustify"

# AMP setup
brew "httpd", restart_service: true
brew "mysql@5.7", restart_service: true
brew "shivammathur/php/php@7.3"

# Node and ruby 
brew "node"
brew "python@3.9"
brew "rbenv"
brew "swiftformat"
brew "npm"

# These casks should avoid the appdir directive
cask "qlcolorcode"

# set arguments for all 'brew install --cask' commands
cask_args appdir: "/Applications/Local", require_sha: true
# Some Apps (should go in Local though)
cask "qlmarkdown"
cask "carbon-copy-cloner"
cask "airbuddy"
cask "alfred"
cask "base"
cask "bbedit"
cask "betterzip"
cask "firefox"
cask "brave-browser"
cask "coderunner"
cask "homebrew/cask/dash"
cask "fork"
cask "omnigraffle"
cask "kaleidoscope"
cask "nova"
cask "opera"
cask "paw"
cask "proxyman"
cask "spamsieve"
cask "transmit"
cask "sequel-ace"
cask "sf-symbols"
cask "xscope"
cask "marked"
cask "mactracker"
cask "slack"
cask "xcodes"
cask "dropdmg"
cask "coconutbattery"

# -- These don't have sha256 defined
cask_args appdir: "/Applications/Local", require_sha: false
cask "sync"
cask "daisydisk"
cask "google-chrome"
cask "font-maven-pro"
cask "unexpectedly"
cask "apparency"
cask "suspicious-package"
cask "keyboardcleantool"

# -- Mac App Store Apps
# Tot
# 1Password for Safari
# Things (SLK account)

# SourceryPro
# Boop
# PLIST
# JSON

# 1Blocker
# Hush
# StopTheMadness
# Vinegar
# Speedtest
