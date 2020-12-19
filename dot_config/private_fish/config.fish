if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/matthewtattoli/google-cloud-sdk/path.fish.inc' ]; . '/Users/matthewtattoli/google-cloud-sdk/path.fish.inc'; end


alias df='df -h'
alias more=less
export VISUAL="nvim"
export EDITOR="nvim"
set -gx PATH $PATH $HOME/.krew/bin

