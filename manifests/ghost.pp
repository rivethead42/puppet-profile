class profile::ghost {
  class { '::nodejs': }

  #class { '::ghost': }

  #::ghost::blog { 'ghost': }

  #Ghost::Blog <| |> {
  #  require => Class['::nodejs']
  #}
}
