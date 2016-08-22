#
# Cookbook Name:: zyx-rent
# Recipe:: setup
#

zyx-rent = node['zyx-rent']

# Git
include_recipe "zyx-rent::git"

# packages
include_recipe "zyx-rent::packages"

# User configs
include_recipe "zyx-rent::user"
