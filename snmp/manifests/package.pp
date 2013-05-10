# Class to install snmp package
#

class snmp::package {
  package {'net-snmp':
    ensure => present,
  }
}
