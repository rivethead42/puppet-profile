class profile::ghost {
  include ::nodejs
  include ::ghost
  ::ghost::blog { 'ghost': }

  Class['::Ghost'] <| |> {
    require => Class['::nodejs']
  }
}
