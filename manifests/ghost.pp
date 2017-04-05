class profile::ghost {
  class { '::nodejs':
    before => Class['::ghost']
  }

  class { '::ghost': }

  ::ghost::blog { 'ghost': }

  Ghost::Blog <| |> {
    require => Class['::nodejs']
  }
}
