if [ -f ~/.aliases ]; then
   source ~/.aliases
fi

# Git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Start rbenv
eval "$(rbenv init -)"

# Add Homebrew’s sbin to PATH
export PATH="$PATH:/usr/local/sbin"

# Add Android SDK to PATH
export PATH="$PATH:/Users/julian/Library/Android/sdk/platform-tools/"

# Added by n-install (see http://git.io/n-install-repo)
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# PostgreSQL
export PGHOST="/private/tmp"
export PATH="$PATH:/usr/local/opt/postgresql@9.6/bin"
export LDFLAGS="-L/usr/local/opt/postgresql@9.6/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@9.6/include"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@9.6/lib/pkgconfig"

# Add bin (user) folder to PATH
export PATH="$PATH:/Users/julian/bin"

# Proxy for ayuntamiento de Madrid
# ssh decideproxy ssh-add

# Set locales
export LC_ALL=en_ES.UTF-8

# history size
export HISTFILESIZE=1000000
export HISTSIZE=1000000
