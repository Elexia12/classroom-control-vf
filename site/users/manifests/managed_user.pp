define users::managed_user(
  $username   = $title,
  $uid        = undef,
  $groupname  = 'regular',
  $homedir    = "/home/${username}",
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
  
  file { [$homedir, "${homedir}/.ssh"]:
    ensure => directory
  }
  
}
