# Load virtual environments automatically

# This environment variable is for enabling a venv for a whole tmux session
if [[ -n "$FABIO_SAYS_VENV" ]]; then
    source "$FABIO_SAYS_VENV/bin/activate"
    export PATH="$FABIO_SAYS_VENV/bin:$PATH"
else
    # This is just what everyone calls their virtualenv
    if [ -d venv ]; then
        source venv/bin/activate
        export PATH="./venv/bin:$PATH"
    fi
fi
