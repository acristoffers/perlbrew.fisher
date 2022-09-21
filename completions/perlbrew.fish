if not which -s perlbrew
    return
end

for com in (perlbrew help | perl -ne'print lc if s/^COMMAND:\s+//')
    complete -f -c perlbrew -n '__fish_perlbrew_needs_command' -a $com
end

for com in switch use;
    complete -f -c perlbrew -n "__fish_perlbrew_using_command $com" \
        -a '(perlbrew list | perl -pe\'s/\*?\s*(\S+).*/$1/\')'
end

