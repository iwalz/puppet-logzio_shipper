# Params class for logzio shipper
class logzio_shipper::params {
  $version        = '8.19.0'
  $token          = ''
  $service_ensure = 'running'
  $service_enable = true
#
#  case $::osfamily {
#    'Debian': {
#
#    }
#    'RedHat': {
#      case $::operatingsystem {
#        'Fedora': {
#      
#        }
#        default: {
#          
#        }
#      }
#    }
#  }
}