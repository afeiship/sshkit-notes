require "sshkit"
require "sshkit/dsl"
include SSHKit::DSL

# REF:
# https://github.com/capistrano/sshkit/blob/master/EXAMPLES.md#setting-global-ssh-options

SSHKit::Backend::Netssh.configure do |ssh|
  filename = "./sshkeys/id_rsa"
  ssh.ssh_options = {
    keys: [filename],
    user: "fzheng",
    auth_methods: ["publickey"],
  }
end

# SSHKit Config:
# SSHKit.config.output_verbosity = :info

remote_host = "123.123.123.163"

desc "Who am I on the server"
task :who do
  on remote_host do
    puts capture :whoami
  end
end
