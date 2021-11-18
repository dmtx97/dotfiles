if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a repos cd ~/Documents/repos
abbr -a neorc cd ~/.config/nvim

function dotfiles --description 'access .dotfiles git repo'
    /usr/bin/git --git-dir=/home/daniel/.cfg/ --work-tree=/home/daniel $argv
end

