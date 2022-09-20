function __perlbrew_deactivate
    __perlbrew_set_env
    set -x PERLBREW_PERL
    set -x PERLBREW_LIB
    set -x PERLBREW_PATH
    __perlbrew_set_path
end
