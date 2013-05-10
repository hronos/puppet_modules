# Class to configure ntpd
#

class ntp::config {
  file { '/etc/ntp.conf':
    ensure  =>  present,
    owner   =>  'root',
    group   =>  'root',
    mode    =>  '0644',
    source  =>  'puppet:///modules/ntp/ntp.conf',
    require =>  Class['ntp::package'],
    notify  =>  Class['ntp::service'],
  }
}
