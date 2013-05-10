# Class to control snmpd service
#

class snmp::service {
  service { 'snmpd':
    ensure      =>  running,
    hasstatus   =>  true,
    hasrestart  =>  true,
    enable      =>  true,
    require     =>  Class['snmp::config'],
  }
}
