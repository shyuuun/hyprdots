if status is-interactive
    fastfetch
end

set -gx PATH $PATH /usr/bin/flutter

# disable fish greeting
set -U fish_greeting

# Aliases
alias gc="git commit"
alias gch="git checkout"
alias gs="git status"
alias gpl="git pull"
alias gph="git push"
