# Class to control Jenkins service
#
class jenkins::service {
  service { 'jenkins':
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart  => true,
    require     => Class['jenkins::install'],
  }
}
