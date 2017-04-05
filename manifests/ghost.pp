class profile::ghost {
  class { '::nodejs':
    repo_url_suffix => '5.x',
  }

  #class { '::ghost': }

  #::ghost::blog { 'ghost': }

  #Ghost::Blog <| |> {
  #  require => Class['::nodejs']
  #}
}
