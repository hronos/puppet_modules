# Class to install packages for GlusterFS
#

class gluster::package {
  package {'glusterfs':
    ensure    => installed,
    provider  => rpm,
    source    => '/root/rpms/glusterfs-3.3.0-1.el6.x86_64.rpm',
    require   => Class['gluster::files'],
  }
  package {'glusterfs-devel':
    ensure    => installed,
    provider  => rpm,
    source    => '/root/rpms/glusterfs-devel-3.3.0-1.el6.x86_64.rpm',
    require   => Package['glusterfs'],
  }
  package {'glusterfs-fuse':
    ensure    => installed,
    provider  => rpm,
    source    => '/root/rpms/glusterfs-fuse-3.3.0-1.el6.x86_64.rpm',
    require   => Package['glusterfs'],
  }
  package {'glusterfs-server':
    ensure    => installed,
    provider  => rpm,
    source    => '/root/rpms/glusterfs-server-3.3.0-1.el6.x86_64.rpm',
    require   => Package['glusterfs-fuse'],
  }
}
