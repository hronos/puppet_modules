# Class to install ganglia
#
class ganglia {
  include ganglia::params
  include ganglia::package
  package { 'ganglia-gmond'":
    ensure => present,
  }
}
