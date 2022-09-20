function __fish_perlbrew_needs_command
  set cmd (commandline -opc)
  if test (count $cmd) -eq 1 -a $cmd[1] = 'perlbrew'
    return 0
  end
  return 1
end
