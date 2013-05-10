# Class to control gluster service
#

class gluster::service {
  service {'glusterd':
    ensure      => running,
    hasstatus   => false,
    hasrestart  => true,
    enable      => true,
    require     => Class['gluster::package'],
  }
}
