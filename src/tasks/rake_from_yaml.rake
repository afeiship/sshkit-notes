require "yaml"
require "sshkit"
require "sshkit/dsl"
include SSHKit::DSL

config = YAML.load_file "./config/test.yaml"
# REF:
# https://github.com/capistrano/sshkit/blob/master/EXAMPLES.md#setting-global-ssh-options

SSHKit::Backend::Netssh.configure do |ssh|
  ssh.ssh_options = config["ssh_options"]
end
SSHKit.config.output_verbosity = :info

# remote_host = "123.131.21.12"

desc "From yaml"
task :yyy do
  on remote_host do
    puts capture :whoami
  end
end
