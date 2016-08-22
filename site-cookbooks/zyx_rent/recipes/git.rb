#
# Cookbook Name:: zyx_rent
# Recipe:: git
#
zyx_rent = node['zyx_rent']

include_recipe "git"

# Get code of xyz-rent from git repository
git zyx_rent['repo_path'] do
  reference zyx_rent['branch']
  repository zyx_rent['repository']
  enable_submodules true
  action :checkout
  timeout 1200
end
