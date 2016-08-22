#
# Author:: Rodrigo Ramírez Norambuena (<decipher.hk@gmail.com>)
# Cookbook Name:: zyx_rent
# Attributes:: default
#

# user
default['zyx_rent']['user'] = "vagrant"

# repository zyx_rent
default['zyx_rent']['repository'] = "https://github.com/c-dos/zyx-rent.git"
default['zyx_rent']['repo_path'] = "/home/#{default['zyx_rent']['user']}/zyx-rent"
default['zyx_rent']['branch'] = "master"

# packages

if platform?("ubuntu", "debian")
  packages = %w{
    aptitude
  }
end
default['zyx_rent']['packages'] = packages
