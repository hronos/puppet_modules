# Class to install firefox
#

class firefox {
  include firefox::package
  include firefox::service
  include firefox::files
}
