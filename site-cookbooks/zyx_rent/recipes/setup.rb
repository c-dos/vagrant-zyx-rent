#
# Cookbook Name:: zyx_rent
# Recipe:: setup
#

zyx_rent = node['zyx_rent']

# Git
include_recipe "zyx_rent::git"

# packages
include_recipe "zyx_rent::packages"

# User configs
include_recipe "zyx_rent::user"
