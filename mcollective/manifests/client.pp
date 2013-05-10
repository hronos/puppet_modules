# Class to install Mcollective client
# required on the box mcollective queries from

class mcollective::client {
  # push the client cfg out to the nodes and subscribe to/require the package
    file {'mcollective-client.cfg':
      source      => 'puppet:///modules/mcollective/client.cfg',
      path        => '/etc/mcollective/client.cfg',
      owner       => 'root',
      group       => 'root',
      mode        => '0440',
      require     => Package['mcollective-client'],
      subscribe   => Package['mcollective-client'],
    }
  file {'/usr/libexec/mcollective/mcollective/application/':
      ensure    => directory,
      source    => 'puppet:///modules/mcollective/application',
      recurse   => true,
      owner     => 'root',
      mode      => '0644',
    }
    # install the package
    package { 'mcollective-client':
      ensure => present,
    }
}
