# Class to manage files and rpms for Gluster
#

class gluster::files {
  file {'/root/rpms':
      ensure    => directory,
      source    => 'puppet:///modules/gluster/rpms',
      recurse   => true,
      owner     => 'root',
      mode      => '0644',
  }
  file {['/export','/export/mage-store']:
      ensure    => directory,
      owner     => 'root',
      mode      => '0644',
  }
  file {'/mnt/mage-store':
      ensure    => directory,
      owner     => 'root',
      mode      => '0644',
  }
}
