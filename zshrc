source $HOME/.config/common

# zgitinit and prompt_wunjo_setup must be somewhere in your $fpath, see README for more.

setopt promptsubst

# Load the prompt theme system
autoload -U promptinit
promptinit

prompt adam2

# GPG agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
# Enable yubico reading
gpg-connect-agent updatestartuptty /bye

# Load rbenv
eval "$(rbenv init -)"
