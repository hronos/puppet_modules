# gluster peer probe wrapper
#

class gluster::peer {
  # Define peer probe
  define gluster_peer () {
    exec { "/usr/sbin/gluster peer probe ${title}":
        unless  => "/bin/egrep '^hostname.+=${title}$' /var/lib/glusterd/peers/*",
        require => Service['glusterd'],
    }
  }
}
