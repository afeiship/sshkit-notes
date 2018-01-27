#!/usr/bin/env ruby


require 'sshkit'
require 'sshkit/dsl'
include SSHKit::DSL


run_locally do
  puts capture(:whoami)  
end


run_locally do
  within '/tmp' do
    puts capture(:ls)
  end
end