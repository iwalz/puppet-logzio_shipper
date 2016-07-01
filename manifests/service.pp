# Manage rsyslog service
class logzio_shipper::service {
  service { 'rsyslog':
    ensure => $logzio_shipper::service_ensure,
    enable => $logzio_shipper::service_enable,
    name   => 'rsyslog',
  }
}