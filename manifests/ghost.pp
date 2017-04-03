class profile::ghost(
  $ghost_version,
  $ghost_source_dir,
  $ghost_content_dir
  $packages,
) {
  packages { $packages:
    ensure => present,
  }
  -> class { "::ghost":
    ghost_version => $ghost_version,
    ghost_source_dir => $ghost_source_dir,
    ghost_content_dir => $ghost_content_dir,
  }
}
