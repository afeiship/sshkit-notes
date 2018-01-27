require 'sshkit'
require 'sshkit/dsl'
include SSHKit::DSL

# SSHKit Config:
SSHKit.config.output_verbosity = :debug

task :hello do  
  puts "Hello world"
end


task :echo  do  
    run_locally do
      execute "echo 'hi'"
    end
end

task :sshkit_hello do  
  run_locally do
    rake "hello"
  end
end