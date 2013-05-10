# Class for snmp

class snmp {
  include snmp::package
  include snmp::config
  include snmp::service
}

