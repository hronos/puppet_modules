# Class to configure Nagios clients
#

class nagios::client::config {
  case "${::system_role}" {
    'prod_db': {
      $proc_warn = '380'
      $proc_crit = '400'
    }
    default: {
      $proc_warn = '165'
      $proc_crit = '200'
    }
  }
  file { '/etc/nagios/nrpe.cfg':
    content =>  template('nagios/nrpe.erb'),
    require =>  Class['nagios::client::pre'],
    notify  =>  Class['nagios::client::service'],
  }
  file {'/usr/lib/nagios':
    ensure  =>  '/usr/lib64/nagios',
  }
}
