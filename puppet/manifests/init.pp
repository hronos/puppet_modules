# Class to control puppet on clients
#

class puppet {
  include puppet::service
  include puppet::config
}
