# Configures rsyslog to ship nginx access and error logs
define logzio_shipper::haproxy {
  include logzio_shipper

  file { "/etc/rsyslog.d/${name}.conf":
    content => template('logzio_shipper/haproxy.erb'),
    owner   => root,
    group   => root,
    mode    => '0655',
  }
}