# load yaml
> Load config from yaml file.

## yaml 
```yml
ssh_options:
  :user: fzheng
  :auth_methods:
    - publickey
host: 123.123.211.122
```

## config
```rb
require "yaml"
require "sshkit"
require "sshkit/dsl"
include SSHKit::DSL

config = YAML.load_file "./config/test.yaml"
# REF:
# https://github.com/capistrano/sshkit/blob/master/EXAMPLES.md#setting-global-ssh-options
SSHKit.config.output_verbosity = :info
SSHKit::Backend::Netssh.configure do |ssh|
  ssh.ssh_options = config["ssh_options"]
end

desc "By yaml"
task :by_yaml do
  on config['host'] do
    puts capture :whoami
  end
end
```
