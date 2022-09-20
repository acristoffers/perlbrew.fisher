function __perlbrew_activate
    functions -e perl

    if test -n "$PERLBREW_PERL"
        if test -z "$PERLBREW_LIB"
            __perlbrew_set_env $PERLBREW_PERL
        else
            __perlbrew_set_env $PERLBREW_PERL@$PERLBREW_LIB
        end
    end

    __perlbrew_set_path
end
