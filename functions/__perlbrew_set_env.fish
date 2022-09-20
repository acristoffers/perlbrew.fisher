function __perlbrew_set_env
    set -l code (eval $perlbrew_command env $argv | perl -pe 's/^(export|setenv)/set -xg/; s/=/ /; s/^unset(env)* (.*)/if test -n "\$$2"; set -eg $2; end/; s/$/;/; y/:/ /')

    if test -z "$code"
        return 0;
    else
        eval $code
    end
end
