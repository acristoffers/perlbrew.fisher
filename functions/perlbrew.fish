function perlbrew

    test -z "$argv"
    and echo "    Usage: perlbrew <command> [options] [arguments]"
    and echo "       or: perlbrew help"
    and return 1

    switch $argv[1]
        case use
            if test ( count $argv ) -eq 1
                if test -z "$PERLBREW_PERL"
                    echo "Currently using system perl"
                else
                    echo "Currently using $PERLBREW_PERL"
                end
            else
                __perlbrew_set_env $argv[2]
                if test "$status" -eq 0
                    __perlbrew_set_path
                end
            end

        case switch
            if test ( count $argv ) -eq 1
                command perlbrew switch
            else
                perlbrew use $argv[2]
                if test "$status" -eq 0
                    __perlbrew_reinit $argv[2]
                end
            end

        case off
            __perlbrew_deactivate
            echo "perlbrew is turned off."

        case switch-off
            __perlbrew_deactivate
            __perlbrew_reinit
            echo "perlbrew is switched off."

        case '*'
            command perlbrew $argv
    end
end
