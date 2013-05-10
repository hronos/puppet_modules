# Class to configure Firefox and Xvfb
#

class firefox::files {
  file {'/etc/init.d/xvfb':
    require => Class['firefox::package'],
    source  => 'puppet:///modules/firefox/xvfb',
    mode    => '0755',
  }
}
