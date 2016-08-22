#
# Cookbook Name:: zyx_rent
# Recipe:: packages
#
zyx_rent = node['zyx_rent']

# packages / dependencies
include_recipe "apt" if platform?("ubuntu", "debian")

# install the required packages.
zyx_rent['packages'].each do |pkg|
  package pkg
end

# Install necessary packages for dev
#execute "Exec script some script"  do
#  command "sudo sh #{zyx_rent['repo_path']}"
#  action :run
#end
