set -U fish_greeting

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/share/nvim/mason/bin
fish_add_path $HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin
fish_add_path $HOME/.local/share/coursier/bin
fish_add_path $HOME/.bun/bin

source $HOME/.config/fish/zoxide.fish

set -gx GOPATH $HOME/.go
set -gx GOBIN $GOPATH/bin
set -gx GO111MODULE auto

fish_add_path $GOBIN

set -gx EDITOR ~/.cargo/bin/hx
set -gx VISUAL ~/.cargo/bin/hx
set -gx BROWSER zen-browser

alias n="nnn"
alias t="tmux"
alias pacman="paru"
alias gg="gitui"
alias cd="z"
alias ls="eza"
alias ip="ip --color=auto"
alias wp="inxi -w"
alias v=$EDITOR
alias ll="ls -l"
alias cdd="cd -"
alias oj="objdump"
alias pp="ping gnu.org"
alias gd="godoc -http=localhost:8000"
alias sysinfo="inxi -Fxz"
alias tt="btop"
alias reboot="reboot"
alias zathura="zathura --fork"
alias py="python"
alias weather="curl https://wttr.in/kathmandu"
alias cp="cp -iv"
alias copy="rsync -avzhP"
alias yeet="yay -Rsn"
alias cputemp="watch -n 2 sensors"
alias dc="cd"
alias m="make"
alias fastfetch="fastfetch -c examples/8.jsonc"

test -r '/home/owl/.opam/opam-init/init.fish' && source '/home/owl/.opam/opam-init/init.fish' >/dev/null 2>/dev/null; or true

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

function e
    emacs --eval="(progn (magit)) &"
end
