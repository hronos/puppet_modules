# Class to control ntpd service
#

class ntp::service {
  service { 'ntpd':
    ensure      => running,
    require     => Class['ntp::config'],
    hasstatus   =>  true,
    hasrestart  =>  true,
    enable      =>  true,
  }
}
