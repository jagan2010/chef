#
# Cookbook:: chef-workstation
# Recipe:: motd
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file '/etc/motd' do
    content "Hello Jagadish!  This is the message of the day
    My ipaddress is #{node['ipaddress']}
    total memory allocated is #{node['memory']['total']}
    kernel release is #{node['kernel']['release']}
    My company is #{node['company']['name']}
    My slogan is #{node['company']['slogan']}
    "
end

node['kernel']['release']
