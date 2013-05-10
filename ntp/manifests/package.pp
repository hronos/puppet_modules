# Class to install ntp package
#

class ntp::package {
  package { 'ntp':
    ensure => installed
  }
}
