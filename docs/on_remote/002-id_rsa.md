# id_rsa
> Using id_rsa.

## config
```rb
require "sshkit"
require "sshkit/dsl"
include SSHKit::DSL

# REF:
# https://github.com/capistrano/sshkit/blob/master/EXAMPLES.md#setting-global-ssh-options
remote_host = "123.123.123.163"
SSHKit::Backend::Netssh.configure do |ssh|
  filename = "./sshkeys/id_rsa"
  ssh.ssh_options = {
    keys: [filename],
    user: "fzheng",
    auth_methods: ["publickey"],
  }
end

desc "By id_rsa"
task :by_id_rsa do
  on remote_host do
    puts capture :whoami
  end
end
```
