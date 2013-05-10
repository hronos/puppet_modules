# Class to manage puppetlabs repo
#

class puppet::repo {
  yumrepo { 'Puppet':
    baseurl   => 'http://yum.puppetlabs.com/el/6/products/x86_64/',
    descr     => 'Puppet repository',
    enabled   => 1,
    gpgcheck  => 1,
    gpgkey    => 'http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs'
  }
}
