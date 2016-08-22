#
# Author:: Rodrigo Ramírez Norambuena (<decipher.hk@gmail.com>)
# Cookbook Name:: zyx-rent
# Attributes:: default
#

# user
default['zyx-rent']['user'] = "vagrant"

# repository zyx-rent
default['zyx-rent']['repository'] = "https://github.com/c-dos/zyx-rent.git"
default['zyx-rent']['repo_path'] = "/home/#{default['zyx-rent']['user']}/zyx-rent"
default['zyx-rent']['branch'] = "master"

# packages

if platform?("ubuntu", "debian")
  packages = %w{
    aptitude
  }
end
default['zyx-rent']['packages'] = packages
