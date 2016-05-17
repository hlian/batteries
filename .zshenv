# https://github.com/sfackler/rust-openssl/issues/255
export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include

if [[ -d /usr/local/bin ]]; then
    export PATH=/usr/local/bin:$PATH
fi

if [[ -d /usr/local/sbin ]]; then
    export PATH=/usr/local/sbin:$PATH
fi

if [[ -d ~/.local/bin ]]; then
    export PATH=~/.local/bin:$PATH
fi

if [[ -d ~/.stack/programs/x86_64-osx/ghc-7.10.3/bin ]]; then
    export PATH=~/.stack/programs/x86_64-osx/ghc-7.10.3/bin:$PATH
fi

if [[ -d ~/.cask/bin ]]; then
    export PATH="$HOME/.cask/bin:$PATH"
fi

typeset -U PATH
