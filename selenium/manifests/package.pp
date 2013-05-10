# Class to install packages for selenium tests
#

class selenium::package {
  include pear
  pear::package { 'PHPUnit': 
    repository  => 'pear.phpunit.de'
  }
  pear::package { 'PHPUnit_Selenium': 
    repository  => 'pear.phpunit.de'
  }
  pear::package { 'PHP_Invoker':
    repository  => 'pear.phpunit.de'
  }
  pear::package { 'PHPUnit_Story':
    repository  => 'pear.phpunit.de'
  }
  pear::package { 'DbUnit':
    repository  => 'pear.phpunit.de'
  }
  pear::package { 'Yaml':
    repository  => 'pear.symfony.com' 
  }
}
