# Class for installing rackspace-novaclient pip package
#

class novaclient::packages {
  package { 'rackspace-novaclient':
    ensure => present,
    provider => pip
  }
}

