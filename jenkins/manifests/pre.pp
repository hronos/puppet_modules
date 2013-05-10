# Class to configure Jenkins yum repo

class jenkins::pre {
  package {'java-1.6.0-openjdk':
    ensure => installed
  }
  yumrepo { 'Jenkins':
    baseurl   => 'http://pkg.jenkins-ci.org/redhat',
    descr     => 'Jenkins repository',
    enabled   => 1,
    gpgcheck  => 1,
    gpgkey    => 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key'
  }
}
