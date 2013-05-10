# Class to control xvfb service

class firefox::service {
  service { 'xvfb':
    ensure      =>  running,
    hasstatus   =>  true,
    hasrestart  =>  true,
    enable      =>  true,
    require     =>  Class['firefox::files'],
  }
}
