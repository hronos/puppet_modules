# Class to install package for gluster clients
#

class gluster::client {
  file {'/root/rpms':
      ensure    => directory,
      source    => 'puppet:///modules/gluster/rpms',
      recurse   => true,
      owner     => 'root',
      mode      => '0644',
  }
  package {'glusterfs':
    ensure    => installed,
    provider  => rpm,
    source    => '/root/rpms/glusterfs-3.3.0-1.el6.x86_64.rpm',
    require   => File['/root/rpms'],
  }
  package {'glusterfs-fuse':
    ensure    => installed,
    provider  => rpm,
    source    => '/root/rpms/glusterfs-fuse-3.3.0-1.el6.x86_64.rpm',
    require   => Package['glusterfs'],
  }
  package {'rpcbind':
    ensure    => installed,
  }
  service {'rpcbind':
    ensure  => running,
    require => Package['rpcbind'],
  }
}
