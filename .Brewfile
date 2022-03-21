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
brew "git-flow"
brew "jq"
brew "libusb-compat"

# MAMP setup
brew "httpd", restart_service: true
brew "mysql@5.7", restart_service: true
brew "shivammathur/php/php@7.3"

# Node and ruby 
brew "node"
brew "python@3.9"
brew "rbenv"
brew "swiftformat"
brew "terminal-notifier"
brew "uncrustify"

# set arguments for all 'brew install --cask' commands
cask_args appdir: "/Applications/Local", require_sha: true
# Some Apps (should go in Local though)
cask "carbon-copy-cloner"
cask "1password"
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

# These don't have sha256 defined
cask_args appdir: "/Applications/Local", require_sha: false
cask "sync"
cask "daisydisk"
cask "google-chrome"
cask "font-maven-pro"
cask "unexpectedly"

# Mac App Store Apps
# mas "1Blocker", id:1365531024  
# mas "Hush", id:1544743900  
# mas "StopTheMadness", id:1376402589
# mas "Vinegar", id:1591303229

# mas "Tot", id:1491071483  
# mas "Speedtest", id:1153157709  

# mas "SourceryPro", id:1561780836  
# mas "Boop", id:1518425043  
# mas "PLIST", id:1157491961  
# mas "JSON", id:567740330   
