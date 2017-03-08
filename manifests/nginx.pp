class profile::nginx() {
  include ::nginx
  ::nginx::vhost { $facts['fqdn']:
    docroot => '/usr/share/nginx/html',
  }
}
