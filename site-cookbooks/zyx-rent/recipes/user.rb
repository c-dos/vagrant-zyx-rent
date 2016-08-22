#
# Cookbook Name:: zyx-rent
# Recipe:: user
#

zyx-rent = node['zyx-rent']

include_recipe "oh_my_zsh"

# Config user env
# vimrc
template "#{zyx-rent['home']}/.vimrc" do
  user zyx-rent['user']
  source "vimrc.erb"
  mode 0644
end


node.default[:oh_my_zsh][:users] = [{
  :login   => 'vagrant',
    :theme   => 'gozilla',
      :plugins => ['git']
      }]
