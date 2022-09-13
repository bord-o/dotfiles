function fish_greeting
end

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

alias e="emacs -fs"
alias c="code ."

alias l="ls"
alias clera="clear"

set -gx PATH $HOME/.cargo/bin $PATH

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/bordo/.ghcup/bin $PATH # ghcup-env

# opam configuration
source /home/bordo/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
