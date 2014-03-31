#
# Cookbook Name:: apache1
# Recipe:: default
#
# Copyright 2014, Chef Workshops, Inc.
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
  action :install
end

service "httpd" do
  action [ :enable, :start ]
end

execute "mv /etc/httpd/conf.d/welcome.conf /etc/httpd/conf.d/welcome.conf.disabled" do 
  only_if do
    File.exist?("/etc/httpd/conf.d/welcome.conf")
  end
  notifies :restart, "service[httpd]"
end

# template "/var/www/html/index.html" do
#   source "index.html.erb"
#   mode "0644"
# end