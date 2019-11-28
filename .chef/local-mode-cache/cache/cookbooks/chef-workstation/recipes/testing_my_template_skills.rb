#
# Cookbook:: chef-workstation
# Recipe:: testing_my_template_skills
#
# Copyright:: 2019, The Authors, All Rights Reserved.
template '/home/opc/important.txt' do
    source 'important.txt.erb'
end
