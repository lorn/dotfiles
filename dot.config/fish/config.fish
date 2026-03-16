if status is-interactive
    # Commands to run in interactive sessions can go here
end
zoxide init fish | source
source /opt/homebrew/opt/asdf/libexec/asdf.fish
source "/Users/lorn/.asdf/installs/rust/1.92.0/env.fish" # For fish
alias vim='hx'
alias vi='hx'
alias nvim='hx'
export PATH="$HOME/.local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lorn/src/google-cloud-sdk/path.fish.inc' ]; . '/Users/lorn/src/google-cloud-sdk/path.fish.inc'; end
