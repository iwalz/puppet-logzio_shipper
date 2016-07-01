## Logz.io Shipping module
This module allows to easily ship your logs to [https://logz.io](logz.io).
It utilizes rsyslog for log-shipping.

```
class {'logzio_shipper':
  token => 'MyTokenFromLogzIo'
}

logzio_shipper::nginx {'nginx':
  access_file => '/var/log/nginx/localhost.access.log',
  error_file  => '/var/log/nginx/localhost.error.log',
}

logzio_shipper::haproxy {'haproxy':}
```