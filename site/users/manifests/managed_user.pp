define users::managed_users(
  $username   = $title,
  $uid        = undef,
  $groupname  = undef,
  $homedir    = "/home/${title}",
){
  File {
    owner => $username,
    group => $groupname,
    mode  => '0644' # For directories will automatically go to 0755
  }
  
  user { $username:
    ensure  => present,
    uid     => $uid,
    gid     => $groupname,
    home    => $homedir,
  }
  
  group { $groupname:
    ensure  => present,
  }
  
  file { [$homedir, "${homedir}/.ssh"]
    ensure => directory
  }
  
}
