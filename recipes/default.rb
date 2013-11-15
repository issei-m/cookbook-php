#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2013, Issei Murasawa
#

node['php']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end

template "/etc/php.d/~my.ini" do
  source "~my.ini.erb"
  mode 0644
  owner "root"
  group "root"
end
