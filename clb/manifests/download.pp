# Class to download clb package
#

class clb::download {
  exec {'git clone clb':
    command => '/usr/bin/git clone git://github.com/calebgroom/clb.git /opt/clb',
    require => Class['clb::pre'],
    creates => '/opt/clb',
  }
}
