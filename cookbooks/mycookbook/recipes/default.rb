#
# Cookbook Name:: mycookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory '/tmp/dir1' do
  owner 'root'
  group 'root'
  mode '0755'
end


file '/tmp/dir1/index.php' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
end

package 'httpd' 

service 'httpd' do 
   action :start
end
