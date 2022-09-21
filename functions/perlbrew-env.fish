function perlbrew-env
    set -x PERLBREW_SHELLRC_VERSION 0.96

    if test -z "$PERLBREW_ROOT"
        set -x PERLBREW_ROOT "$HOME/perl5/perlbrew"
    end

    if test -z "$PERLBREW_HOME"
        set -x PERLBREW_HOME "$HOME/.perlbrew"
    end

    if test -z "$PERLBREW_SKIP_INIT" -a -f "$PERLBREW_HOME/init"
        __perlbrew_source_init
    end

    set perlbrew_bin_path "$PERLBREW_ROOT/bin"

    if test -f "$perlbrew_bin_path/perlbrew"
        set -gx perlbrew_command "$perlbrew_bin_path/perlbrew"
    else
        set -gx perlbrew_command perlbrew
    end

    __perlbrew_activate

    set -e perlbrew_bin_path
end
