# Class to install php packages
#

class php {
  package {[
    'php53u-mbstring',
    'php53u-pdo',
    'php53u',
    'php53u-soap',
    'php53u-gd',
    'php53u-mcrypt',
    'php53u-pecl-apc',
    'php53u-common',
    'php53u-mysql',
    'php53u-xml',
    'php53u-pear',
    'php53u-pecl-memcache',]:
    ensure  => installed,
    require => Class['httpd'],
    notify  => Class['httpd::service'],
  }
}
