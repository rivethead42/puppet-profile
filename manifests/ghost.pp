class profile::ghost {
  class { '::ghost':
    include_nodejs => true,
  }
  ::ghost::blog { 'ghost': }
}
