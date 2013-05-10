# Class to install packages for firefox
#

class firefox::package {
  package {'xorg-x11-server-Xvfb':
    ensure => installed,
  }
  package {'firefox':
    ensure => installed,
  }
}
