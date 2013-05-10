# Class to control selenium service
#

class selenium::service {
  service { 'selenium-server':
    ensure      =>  running,
    hasstatus   =>  true,
    hasrestart  =>  true,
    enable      =>  true,
    require     =>  Class['selenium::files'],
  }
}

