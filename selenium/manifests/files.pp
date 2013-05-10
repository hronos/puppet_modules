# Class to create directories and init script for Selenium
#

class selenium::files {
  file {'/etc/init.d/selenium-server':
    require => Class['selenium::package'],
    source  => 'puppet:///modules/selenium/selenium-server',
    mode    => '0755',
  }
  file {'/usr/local/lib/selenium-server':
    ensure    => directory,
    recurse   => true,
    owner     => 'root',
    mode      => '0644',
  }
  file {'/usr/local/lib/selenium-server/selenium-server-standalone-2.21.0.jar':
    source    => 'puppet:///modules/selenium/selenium-server-standalone-2.21.0.jar',
    mode      => '0755',
    require   => File['/usr/local/lib/selenium-server'],
  }
  file {'/var/log/selenium-server':
    ensure    => directory,
    recurse   => true,
    owner     => 'root',
    mode      => '0644',
  }
  
}
