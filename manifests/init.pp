# Main class for logzio shipping
class logzio_shipper (
  $version        = $logzio_shipper::params::version,
  $token          = $logzio_shipper::params::token,
  $service_ensure = $logzio_shipper::params::service_ensure,
  $service_enable = $logzio_shipper::params::service_enable,
) inherits ::logzio_shipper::params {
  
  anchor {'::logzio_shipper::begin':} ->
  class {'::logzio_shipper::install':} ->
  class {'::logzio_shipper::config':
    token => $token
  } ->
  class {'::logzio_shipper::service':} ->
  anchor {'::logzio_shipper::end':}

}