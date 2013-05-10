# Class to automate gluster install
#

class gluster {
  include gluster::package
  include gluster::files
  include gluster::service
  include gluster::peer
}
