# Class to install clb prerequisities
#

class clb::pre {
  package {'git':
    ensure => installed,
  }
}
