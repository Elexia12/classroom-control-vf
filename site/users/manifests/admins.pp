class users::admins {
  
  user::managed_user { 'Jose':}
  
  user::manage_user { 'Alice':
    group => 'admins',
  }
  user::manage_user { 'Chen':
    group => 'admins',
  }
  
  group { 'admins':
    ensure => present,
  }
  
}
