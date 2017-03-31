class profile::ghost(
  $deploy_dir,
  $git_repo,
  $git_revision,
) {
  vcsrepo { $deploy_dir:
    ensure   => present,
    provider => git,
    source   => $git_repo,
    revision => $git_revision,
  }
}
