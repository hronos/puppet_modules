# Class to install phantomjs
#

class phantomjs::packages {
  file { '/opt/phantomjs':
    owner   => 'root',
    group   => 'root',
    ensure  => directory,
    mode    => '0755',
  }
  file { '/usr/bin/phantomjs':
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    source  => 'puppet:///modules/phantomjs/phantomjs',
  }
  file { '/var/www/html/tmp':
    ensure    => directory,
    owner     => 'jenkins',
    group     => 'apache',
    mode      => '0765',
    require   => Class['httpd'],
  } 
}
