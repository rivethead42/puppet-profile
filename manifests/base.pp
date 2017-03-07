class profile::base {
  include ssh
  class { '::ntp':
    servers => [ '0.ubuntu.pool.ntp.org', '1.ubuntu.pool.ntp.org' ],
  }
}
