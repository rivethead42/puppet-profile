class profile::nginx(
  Hash $vhosts,
) {
  include ::nginx
  $vhosts.each |$vhost| {
    notice($vhost)
    #::nginx::vhost { $vhost['fqdn']:
     # port            => $vhost['port'],
     # server_aliases  => $vhost['server_aliases']
    #}
  }
}
