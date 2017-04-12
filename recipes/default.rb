#
# Cookbook Name:: cop_sudoers
# Recipe:: default
#

node['sudo']['packages'].each do |p|
    package p
end

node['sudo']['sudoers_d'].each do |name,content|
    file "/etc/sudoers.d/#{name}" do
        content content
        owner  'root'
        group  'root'
        mode   0440
        action :create
    end
end
