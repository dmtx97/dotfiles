if status is-interactive
    # Commands to run in interactive sessions can go here
end

function repos --description 'Access repository folder quickly'
    cd ~/Documents/repos
end

function neorc --description 'Access neovim config quickly'
    cd ~/.config/nvim
end

function dotfiles --description 'access .dotfiles git repo'
    /usr/bin/git --git-dir=/home/daniel/.cfg/ --work-tree=/home/daniel $argv
end

