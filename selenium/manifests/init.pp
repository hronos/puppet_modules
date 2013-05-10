# Class to install Selenium
#

class selenium {
  include selenium::package
  include selenium::files
  include selenium::service
}
