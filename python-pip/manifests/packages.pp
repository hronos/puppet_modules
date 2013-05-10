# Class for installing python-pip package
#
class python-pip::packages {
  package { 'python-pip':
    ensure => present
  }
}

# Create symlink from pip to python-pip due to differences in Centos 6

file { '/usr/bin/pip':
  ensure => 'link',
  target => '/usr/bin/pip-python',
}
