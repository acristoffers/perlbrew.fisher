function __perlbrew_source_init
    perl -pe 's/^(export|setenv)/set -xg/; s/^unset(env)* (.*)/if test -n "\$$2"; set -eg $2; end/; s/=/ /; s/$/;/;' "$PERLBREW_HOME/init" | source
end
