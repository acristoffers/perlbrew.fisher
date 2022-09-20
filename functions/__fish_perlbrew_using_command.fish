function __fish_perlbrew_using_command
  set cmd (commandline -opc)
  if test (count $cmd) -gt 1
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
end
