PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '

# Hidden files for tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
HISTFILE=~/.cache/.zsh_history
HISTCONTROL=ignoredups

# https://codeberg.org/dnkl/foot/issues/463
TERM=xterm-256color

# NOTE: bindkey -e should be above
# the custom bindkeys
# For vim keybinds in terminal
# e for emacs
bindkey -e
# For some quick text navigation
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
bindkey "^[[3;5~" kill-word

export BROWSER='brave'
export EDITOR='/home/owl/.cargo/bin/hx'
export VISUAL='/home/owl/.cargo/bin/hx'
#export TERM='xterm-kitty'
#export TERMINAL='kitty'
#export TERM='xterm-256color'
export $(dbus-launch)

# For local bins
PATH="$HOME/.local/bin:$PATH"
# For mason lsp
PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
PATH="$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin:$PATH"

# For FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Make compiling easier and I hate runtime errors
export LD_LIBRARY_PATH=libpath:$LD_LIBRARY_PATH
export CFLAGS="-g -Wall -Wpedantic -Wextra"

export QT_QPA_PLATFORM=wayland
#export QT_QPA_PLATFORM=xcb
# some golang configs
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin
export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib64:$LD_LIBRARY_PATH
export PATH=$PATH:$GOPATH/bin
export GO111MODULE="auto"

source ~/.config/nnn/config

# export QT_STYLE_OVERRIDE=Windows

function osc7 {
    setopt localoptions extendedglob
    input=( ${(s::)PWD} )
    uri=${(j::)input/(#b)([^A-Za-z0-9_.\!~*\'\(\)-\/])/%${(l:2::0:)$(([##16]#match))}}
    print -n "\e]7;file://${HOSTNAME}${uri}\e\\"
}

export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:/opt/lampp/bin

source "/home/owl/.zsh_config/xdg_settings"

# opam configuration
[[ ! -r /home/owl/.opam/opam-init/init.zsh ]] || source /home/owl/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# bun completions
[ -s "/home/owl/.bun/_bun" ] && source "/home/owl/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


export PATH="$PATH:/home/owl/.local/share/coursier/bin"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"
