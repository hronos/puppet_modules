# Generic class for Nagios monitoring system
#

class nagios {
  include nagios::server
  include nagios::client
}
