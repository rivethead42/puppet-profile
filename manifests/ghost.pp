class profile::ghost {
  include ::nodejs
  include ::ghost
  ::ghost::blog { 'ghost': }

  ::Ghost <| |> {
    require => Class['::nodejs']
  }
}
