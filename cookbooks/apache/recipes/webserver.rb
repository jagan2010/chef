#
# Cookbook:: apache
# Recipe:: webserver
#
# Copyright:: 2019, The Authors, All Rights Reserved.
yum_package 'httpd' do
    action :install
    flush_cache :before
end



#file '/var/www/html/index.html' do
#   action :create
#    content 'Hi jagadish! welcome to chef'
#end

template '/var/www/html/index.html' do
    source 'index.html.erb'
    variables(:company_name => node['company']['name'], :hostname => node['hostname'], :total_memory => node['memory']['total'])
end

service 'httpd' do
    action [:start,:enable ]
end