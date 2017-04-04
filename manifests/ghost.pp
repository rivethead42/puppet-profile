class profile::ghost(
  $nodejs_version,
  $ghost_version,
  $ghost_source_dir,
  $ghost_content_dir
  $packages,
) {
  packages { $packages:
    ensure => present,
  }

  class { '::nodejs':
    repo_url_suffix => $nodejs_version,
  }

  class { "::ghost":
    ghost_version     => $ghost_version,
    ghost_source_dir  => $ghost_source_dir,
    ghost_content_dir => $ghost_content_dir,
    require           => [Packages[$packages], Class['::nodejs']]
  }
}
