desc "Run local"
task :local_who do
  run_locally do
    puts capture(:whoami)
  end
end
