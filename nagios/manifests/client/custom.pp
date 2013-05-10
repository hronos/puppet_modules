# Class to add custom checks to clients
#

class nagios::client::custom {
  file { '/usr/lib/nagios/plugins/check_memory':
    source  => 'puppet:///modules/nagios/check_memory',
    require => Class['nagios::client::config'],
    mode    => '0755',
    }
}
