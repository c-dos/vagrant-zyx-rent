#
# Cookbook Name:: zyx_rent
# Recipe:: database_postgresql
#

postgresql = node['postgresql']
zyx_rent = node['zyx_rent']

include_recipe "postgresql::server"
include_recipe "database::postgresql"

postgresql_connection = {
  :host => postgresql['server_host'],
  :username => postgresql['username']['postgres'],
  :password => postgresql['password']['postgres']
}

# user for zyx_rent db
postgresql_database_user zyx_rent['database_user'] do
  connection postgresql_connection
  password zyx_rent['database_password']
  action :create
end

# install packages
postgresql['packages'].each do |pkg|
  package pkg
end

# create database zyx_rent and privileges
zyx_rent['environments'].each do |environment|
  postgresql_database "zyx_rent_database" do
    database_name "zyx_rent_#{environment}"
    template "template0"
    encoding "utf8"
    collation "en_US.UTF-8"
    connection postgresql_connection
    action :create
  end

  postgresql_database_user zyx_rent['database_user'] do
    connection postgresql_connection
    database_name "zyx_rent_#{environment}"
    password zyx_rent['database_password']
    action :grant
  end
end

node.default['zyx_rent']['database_host'] = postgresql['server_host']
node.default['zyx_rent']['database_port'] = postgresql['config']['port']
