#
# Cookbook:: apache
# Recipe:: webserver
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'httpd' do
    action :install
end

file '/var/www/html/index.html' do
    action :create
    content 'Hi jagadish! welcome to chef'
end

service 'httpd' do
    action [:start,:enable ]
end