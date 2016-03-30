class users::admins {
  
  users::managed_user { 'Jose': }
  
  users::managed_user { 'Alice':
    group => 'admins',
  }
  
  users::manage_user { 'Chen':
    group => 'admins',
  }
  
  group { 'admins':
    ensure => present,
  }
  
}
