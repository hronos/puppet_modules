# Class to install phantomjs dependencies
#

class phantomjs::pre {
  package {'freetype':
    ensure  => installed,
  }
  package {'fontconfig':
    ensure  => installed,
  }
  package {'cjkuni-uming-fonts':
    ensure  => installed,
  }
}


