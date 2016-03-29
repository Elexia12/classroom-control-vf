class memcached {

  package { 'memcached'
    ensure  => present,
  }

  file { '/etc/skel/.bashrc':
    ensure => file,
    source => 'puppet:///modules/memcached/memcached',
    require => Package['memcached'],
    notify  Service['memcached']
  }
  
  service {
    ensure    => running,
    enable    => true,
  }

}
