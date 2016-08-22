#
# Cookbook Name:: zyx-rent
# Recipe:: packages
#
zyx-rent = node['zyx-rent']

# packages / dependencies
include_recipe "apt" if platform?("ubuntu", "debian")

# install the required packages.
zyx-rent['packages'].each do |pkg|
  package pkg
end

# Install necessary packages for dev
#execute "Exec script some script"  do
#  command "sudo sh #{zyx-rent['repo_path']}"
#  action :run
#end
