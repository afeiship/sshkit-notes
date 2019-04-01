# password
> Using password.

## config
```rb
require "yaml"
require "sshkit"
require "sshkit/dsl"
include SSHKit::DSL

remote_host = "123.131.21.12"
SSHKit.config.output_verbosity = :info
SSHKit::Backend::Netssh.configure do |ssh|
  ssh.ssh_options = {
    user:'root',
    password: 'ABC'
    auth_methods: ["password"]
  }
end


desc "By password"
task :by_password do
  on remote_host do
    puts capture :whoami
  end
end
```
