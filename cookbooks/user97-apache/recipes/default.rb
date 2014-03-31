#
# Cookbook Name:: user97-apache
# Recipe:: default
#
# Copyright 2014, Chef Workshops, Inc.
#
# All rights reserved - Do Not Redistribute
#
package "httpd" 

service "httpd" do
  action [ :enable, :start ]
end