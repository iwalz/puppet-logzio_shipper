# Installation of rsyslog
class logzio_shipper::install {
  apt::ppa {'ppa:adiscon/v8-stable':} ->
  package { 'rsyslog':
    ensure => "${logzio_shipper::version}-0adisconatrusty1",
  }
}
