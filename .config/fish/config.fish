if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set -g theme_nerd_fonts yes

export FLYCTL_INSTALL="/home/kian/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

set -x JAVA_HOME /usr/lib/jvm/java-23-jdk
set -x PATH $JAVA_HOME/bin $PATH

export EDITOR=neovim
set CHROME_EXECUTABLE "/usr/bin/google-chrome"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

starship init fish | source
