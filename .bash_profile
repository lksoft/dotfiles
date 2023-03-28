# Add `~/bin` to the `$PATH`
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/scaws:$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Homebrew & rbenv home
export HOMEBREW_PREFIX=`brew --prefix`
export RBENV_ROOT="$HOMEBREW_PREFIX/opt/rbenv"

# rbenv setup
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# add rbenv shims to PATH
export PATH="$RBENV_ROOT/shims:/opt/homebrew/opt/python/libexec/bin:$PATH"

# Hide Apple's shell deprecation warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Sets up AWS and EasyDNS environment variables to use 1Password
export EASYDNS_TOKEN_LK=op://Personal/EasyDNS-LK/PROD-API/Token
export EASYDNS_KEY_LK=op://Personal/EasyDNS-LK/PROD-API/Key
export EASYDNS_TOKEN_SC=op://sccli/EasyDNS-SC/PROD-API/Token
export EASYDNS_KEY_SC=op://sccli/EasyDNS-SC/PROD-API/Key
export AWS_ACCESS_KEY_SC=op://sccli/AWS-Cred-SC/PROD-API/Token
export AWS_SECRET_ACCESS_SC=op://sccli/AWS-Cred-SC/PROD-API/Key

eval "$(/opt/homebrew/bin/brew shellenv)"
