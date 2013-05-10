# Class to install jenkins package.
#

class jenkins::install {
  package { 'jenkins':
    ensure  => installed,
    require => Class['jenkins::pre'],
  }
}
