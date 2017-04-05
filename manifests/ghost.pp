class profile::ghost {
  include ::ghost
  ::ghost::blog { 'ghost': }
}
