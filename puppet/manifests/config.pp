# Class to control puppet.conf

class puppet::config {
  file { '/etc/puppet/puppet.conf':
    source  => 'puppet:///modules/puppet/puppet.conf',
    notify  => Class['puppet::service'],
    mode    => '0644',
  }
  file { '/etc/sysconfig/puppet':
    source  => 'puppet:///modules/puppet/puppet',
    notify  => Class['puppet::service'],
    mode    => '0644',
  }
}
