class profile::ghost(
  $nodejs_version,
  $ghost_version,
  $ghost_source_dir,
  $ghost_content_dir,
  $ghost_group,
  $ghost_user,
  $packages,
) {
  package { $packages:
    ensure => present,
  }

  class { '::nodejs':
    repo_url_suffix => $nodejs_version,
  }

  class { "::ghost":
    ghost_version     => $ghost_version,
    ghost_source_dir  => $ghost_source_dir,
    ghost_content_dir => $ghost_content_dir,
    ghost_group       => $ghost_group,
    ghost_user        => $ghost_user,
    require           => [Packages[$packages], Class['::nodejs']]
  }
}
