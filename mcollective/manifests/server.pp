# setup the class for the 'server' element
# this is required on all systems that you wish to monitor/control
class mcollective::server {
  file {'/usr/libexec/mcollective/mcollective/agent/':
      ensure    => directory,
      source    => 'puppet:///modules/mcollective/agent',
      recurse   => true,
      owner     => 'root',
      mode      => '0644',
  }
    file {'/usr/libexec/mcollective/mcollective/facts/':
      ensure    => directory,
      source    => 'puppet:///modules/mcollective/facts',
      recurse   => true,
      owner     => 'root',
      mode      => '0644',
    }
    # push the server config out to the nodes
    file {'mcollective-server.cfg':
        source  => 'puppet:///modules/mcollective/server.cfg',
        owner   => 'root',
        group   => 'root',
        mode    => '0440',
        path    => '/etc/mcollective/server.cfg',
    }
    # install the 'server' package
    package { 'mcollective':
        ensure => present,
    }
    # setup the service and ensure it has the relevant files and packages installed.
    service {'mcollective':
        ensure      => running,
        hasrestart  => true,
        require     => [Package['mcollective'],File['mcollective-server.cfg']],
        subscribe   => [
        Package['mcollective'],
        File['mcollective-server.cfg'],
        File['/usr/libexec/mcollective/mcollective/facts/'],
        File['/usr/libexec/mcollective/mcollective/agent']],
  }
}
