name              'zyx_rent'
maintainer        'Rodrigo Ramirez Norambuena'
maintainer_email  'decipher.hk@gmail.com'
license           'Apache 2.0'
description       'Installs and configures enviroment Dev for zyx_rent'
version           '0.1.1'

long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

recipe 'zyx_rent','Main configuration'
depends 'apt'
depends 'git'
depends 'postgresql'
depends 'mysql'
depends 'database'
depends 'oh_my_zsh'

supports 'debian'
supports 'ubuntu'
