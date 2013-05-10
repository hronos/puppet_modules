# Class to control nagios service on clients
#

class nagios::client::service {
  service {'nrpe':
    ensure      =>  running,
    hasstatus   =>  true,
    hasrestart  =>  true,
    enable      =>  true,
    require     =>  Class['nagios::client::config'],
  }
}
