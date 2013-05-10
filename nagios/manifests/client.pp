# Class to configure Nagios clients
#

class nagios::client {
  include nagios::client::pre
  include nagios::client::config
  include nagios::client::service
  include nagios::client::repo
  include nagios::client::custom
}
