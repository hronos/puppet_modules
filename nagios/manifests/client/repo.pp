# Class to setup rpmforge repo for nrpe
#

class nagios::client::repo {
  if $operatingsystem == 'CentOS' {
    yumrepo { "RPMforge":
      baseurl   => 'http://apt.sw.be/redhat/el6/en/x86_64/rpmforge',
      descr     => 'Rpmforge repository',
      enabled   => 1,
      gpgcheck  => 0,
    }
  }
}
