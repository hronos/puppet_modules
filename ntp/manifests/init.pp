# General ntp class
#

class ntp {
  include ntp::package
  include ntp::config
  include ntp::service
}
