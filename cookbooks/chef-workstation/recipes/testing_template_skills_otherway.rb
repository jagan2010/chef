#
# Cookbook:: chef-workstation
# Recipe:: testing_template_skills_otherway
#
# Copyright:: 2019, The Authors, All Rights Reserved.
template '/home/opc/important_otherway.txt' do
    source 'important_otherway.txt.erb'
    variables(:ipaddress => node['ipaddress'],:memory => node['memory']['total'],:release => node['kernel']['release'],:companyname => node['company']['name'],:slogan => node['company']['slogan'])
end