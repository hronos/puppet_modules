# Class to install jenkins on server
# Controls prerequisities, installation and jenkins service
class jenkins {
  include jenkins::pre
  include jenkins::install
  include jenkins::service
}
