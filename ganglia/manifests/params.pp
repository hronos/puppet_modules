#Class to configure ganglia according to server role
#
class ganglia::params {

  $system_role = $::system_role

  case $system_role {
    'joomla-stage': {
      $cluster  =  'joom-stage',
      $host     =  'lux-stage-joom01.luxuphost.com',
      $port     =  '8650',
    }
    'management': {
      $cluster  =  'management',
      $host     =  'monitoring.luxuphost.com',
      $port     =  '8649',
    }
    'joomla-stage-cn': {
      $cluster  =   'joomla-stage-cn',
      $host     =   'joomla-stage-cn-joom01.luxuphost.com',
      $port     =   '8651',
    }
  }
}
