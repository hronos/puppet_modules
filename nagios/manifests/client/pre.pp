# Class to prepare client to be monitored by Nagios
#

class nagios::client::pre {
  $nrpe = $operatingsystem ? {
        'CentOS'  => 'nagios-nrpe',
        default   => 'nrpe',
    }
  package { 'nagios-plugins':
    ensure  =>  present,
  }
  package { 'nagios-plugins-all':
    ensure  =>  present,
  }
  package { "${nrpe}":
    ensure  => present,
    require => Class['nagios::client::repo']
  }
}
