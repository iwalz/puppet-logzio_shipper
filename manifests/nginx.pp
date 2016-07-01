# Configures rsyslog to ship nginx access and error logs
define logzio_shipper::nginx (
  $access_file,
  $error_file,
) {
  include logzio_shipper

  file { "/etc/rsyslog.d/${name}.conf":
    content => template('logzio_shipper/nginx.erb'),
    owner   => root,
    group   => root,
    mode    => '0655',
  }
}