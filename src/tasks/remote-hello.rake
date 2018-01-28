require 'sshkit/dsl'

# REF:
# https://github.com/capistrano/sshkit/blob/master/EXAMPLES.md#setting-global-ssh-options

SSHKit::Backend::Netssh.configure do |ssh|
  ssh.ssh_options = {
    user: 'root',
    auth_methods: ['publickey']
  }
end

# SSHKit Config:
SSHKit.config.output_verbosity = :debug

remote_host = '118.190.158.72';

desc 'Who am I on the server'
task :who do
  on remote_host do
    # execute 'pwd'
    within '/root' do
        puts capture :whoami
        # puts Dir["*"]
    end
    # puts capture(:whoami)
  end
end

desc 'check env'
task :check_env do
    on remote_host do 
        puts capture(:env)
    end
end

desc 'check uptime'
task :check_uptime do
    on remote_host do
        execute :uptime
    end
end


# change user:
# on hosts do |host|
#     as 'www-data' do
#       puts capture(:whoami)
#     end
#   end