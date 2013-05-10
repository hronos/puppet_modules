# Class to configure snmpd
#

class snmp::config {
  file {'/etc/snmp/snmpd.conf':
    require => Class['snmp::package'],
    source  =>  'puppet:///modules/snmp/snmpd.conf',
    notify  =>  Class['snmp::service'],
  }
  file {'/etc/sysconfig/snmpd':
    require => Class['snmp::package'],
    source  =>  'puppet:///modules/snmp/snmpd',
    mode    => '0644',
    notify  =>  Class['snmp::service'],
  }
}
