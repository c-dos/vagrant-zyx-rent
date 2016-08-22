#
# Cookbook Name:: zyx-rent
# Recipe:: git
#
zyx-rent = node['zyx-rent']

include_recipe "git"

# Get code of xyz-rent from git repository
git zyx-rent['repo_path'] do
  reference zyx-rent['branch']
  repository zyx-rent['repository']
  enable_submodules true
  action :checkout
  timeout 1200
end
