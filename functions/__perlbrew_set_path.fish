function __perlbrew_set_path
    set -l MANPATH_WITHOUT_PERLBREW (perl -e 'print join ":", grep { index($_, $ENV{PERLBREW_HOME}) < 0 } grep { index($_, $ENV{PERLBREW_ROOT}) < 0 } split/:/,qx(manpath 2> /dev/null);')

    if test -n "$PERLBREW_MANPATH"
        set -l PERLBREW_MANPATH $PERLBREW_MANPATH":"
        set -x MANPATH {$PERLBREW_MANPATH}{$MANPATH_WITHOUT_PERLBREW}
    else
        set -x MANPATH $MANPATH_WITHOUT_PERLBREW
    end

    set -l PATH_WITHOUT_PERLBREW (eval $perlbrew_command display-pristine-path | perl -pe'y/:/ /')

    # silencing stderr in case there's a non-existent path in $PATH (see GH#446)
    if test -n "$PERLBREW_PATH"
        set -x PERLBREW_PATH (echo $PERLBREW_PATH | perl -pe 'y/:/ /' )
        eval set -x PATH $PERLBREW_PATH $PATH_WITHOUT_PERLBREW 2> /dev/null
    else
        eval set -x PATH $PERLBREW_ROOT/bin $PATH_WITHOUT_PERLBREW 2> /dev/null
    end
end
