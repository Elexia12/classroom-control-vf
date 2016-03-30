class users::admins {
  
  users::managed_user { 'jose': }
  
  users::managed_user { 'alice':
    groupname => 'admins',
  }
  
  users::managed_user { 'chen':
    groupname => 'admins',
  }
  
  group { 'admins':
    ensure => present,
  }
  
}
