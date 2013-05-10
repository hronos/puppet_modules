# Class to install and configure Nagios host
#
class nagios::server {
  package { 'nagios':
    ensure => installed,
  }
  service { 'nagios':
    ensure      => running,
    hasstatus   => true,
    hasrestart  => true,
    enable      => true,
    require     => [Package['nagios'], File['/etc/nagios']],
  }
  file { '/etc/nagios':
    ensure  => directory,
    path    => '/etc/nagios/',
    owner   => 'nagios',
    mode    => '0755',
  }
}
