#
# cookbook name:: zyx-rent
# recipe:: default
#

zyx-rent = node['zyx-rent']

include_recipe 'zyx-rent::setup'
