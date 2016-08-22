#
# Cookbook Name:: zyx_rent
# Recipe:: user
#

zyx_rent = node['zyx_rent']

include_recipe "oh_my_zsh"

# Config user env
# vimrc
template "#{zyx_rent['home']}/.vimrc" do
  user zyx_rent['user']
  source "vimrc.erb"
  mode 0644
end


node.default[:oh_my_zsh][:users] = [{
  :login   => 'vagrant',
    :theme   => 'gozilla',
      :plugins => ['git']
      }]
