# tester123
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2014, Chef Workshops, Inc.
#
# All rights reserved - Do Not Redistribute
#
template "/etc/motd" do
   source "motd.erb"
   mode "0644"
 end
