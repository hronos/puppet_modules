# Class to install clb:
#

class clb::install {
  exec {'install clb':
    command => '/usr/bin/python setup.py install',
    require => Class['clb::download'],
    creates => '/usr/bin/clb',
    cwd     => '/opt/clb',
  }
}
