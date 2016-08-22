#
# cookbook name:: zyx_rent
# recipe:: default
#

zyx_rent = node['zyx_rent']

include_recipe 'zyx_rent::setup'
