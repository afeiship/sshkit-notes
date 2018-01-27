require 'sshkit/dsl'

SSHKit::Backend::Netssh.configure do |ssh|
  ssh.ssh_options = {
    user: 'root',
    auth_methods: ['publickey']
  }
end

# SSHKit Config:
SSHKit.config.output_verbosity = :debug

desc 'Who am I on the server'
task :who do

  on '118.190.158.72' do
    execute 'pwd'
  end

end
