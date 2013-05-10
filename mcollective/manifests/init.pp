#### Puppet module for MCollective ###
class mcollective {
  File {
    ignore => '.svn',
  }
  # install the 'common' package required for both client and server
  package { 'mcollective-common':
    ensure => present,
  }

  # we need the rubgems installed as well.
  package { 'rubygem-stomp':
    ensure => present,
  }
}
