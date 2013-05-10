# Class to install phantomjs and dependencies
#

class phantomjs {
  include phantomjs::pre
  include phantomjs::packages
}
