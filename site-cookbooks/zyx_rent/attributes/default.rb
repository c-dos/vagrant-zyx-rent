#
# Author:: Rodrigo Ramírez Norambuena (<decipher.hk@gmail.com>)
# Cookbook Name:: zyx_rent
# Attributes:: default
#

# user
default['zyx_rent']['user'] = "vagrant"
default['zyx_rent']['home'] = "/home/#{default['zyx_rent']['user']}"

# repository zyx_rent
default['zyx_rent']['repository'] = "https://github.com/c-dos/zyx-rent.git"
default['zyx_rent']['repo_path'] = "/home/#{default['zyx_rent']['user']}/zyx-rent"
default['zyx_rent']['branch'] = "master"

# packages

if platform?("ubuntu", "debian")
  packages = %w{
    aptitude python3-pip python3 vim python3-virtualenv virtualenv node npm
  }
end
default['zyx_rent']['packages'] = packages


# PostgreSQL attributes
include_attribute 'postgresql'

default['postgresql']['version'] = "9.4"
if platform?("ubuntu", "debian")
  default['postgresql']['packages'] = %w{libpq-dev}
end
default['postgresql']['username']['postgres'] = "postgres"
default['postgresql']['password']['postgres'] = "psqlpass"
default['postgresql']['server_host'] = "localhost"
default['postgresql']['config']['port'] = 5432

# database
default['zyx_rent']['database_adapter'] = "postgresql"
default['zyx_rent']['database_password'] = "password"
default['zyx_rent']['database_user'] = default['zyx_rent']['user']

# Envs
default['zyx_rent']['environments'] = %w{development}
