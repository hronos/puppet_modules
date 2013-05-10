# Class to control puppet service
# At the moment I want to run puppetd from mcollective,
# so for now service is stopped on nodes

class puppet::service {
  service { 'puppet':
    ensure     => stopped,
    enable     => false,
    hasrestart => true,
    require    => Class['puppet::config'],
  }
}
