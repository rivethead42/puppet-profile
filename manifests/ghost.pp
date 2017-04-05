class profile::ghost {
  include ::nodejs
  include ::ghost
  ::ghost::blog { 'ghost': }

  Class['::nodejs'] -> Class['::ghost']
}
