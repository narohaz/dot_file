set -g fish_greeting

# 启动fish显示neofetch
neofetch

if status is-interactive
    starship init fish | source
end

function sd
    cd ~/stable-diffusion-webui/
    conda activate sd
    set -x http_proxy "http://127.0.0.1:4870"
    set -x https_proxy "http://127.0.0.1:4870"
    proxychains ./webui.sh
end

function set_http_proxy
    set -gx http_proxy "http://127.0.0.1:4870"
    set -gx https_proxy "http://127.0.0.1:4870"
    echo "HTTP and HTTPS proxy set to http://127.0.0.1:4870"
end

function hyprrc
    nvim ~/.config/hypr/hyprland.conf
end

function fishrc
    nvim ~/.config/fish/config.fish
end

function hypr_keybinddings
    nvim ~/.config/hypr/keybindings.conf
end

# set -x PATH /opt/anaconda/bin/ $PATH
set -x PATH /home/narohaz/.local/bin $PATH
set -xg PATH ~/.config/custom_scripts $PATH

# List Directory
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

#自定义
alias vim="nvim"
alias yyay="yay --needed --noconfirm --sudoloop"

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

# Fixes "Error opening terminal: xterm-kitty" when using the default kitty term to open some programs through ssh
alias ssh='kitten ssh'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/anaconda/bin/conda
    eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/anaconda/etc/fish/conf.d/conda.fish"
        . "/opt/anaconda/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/anaconda/bin" $PATH
    end
end
# <<< conda initialize <<<

