class memcached {

  package { 'memcached'
    ensure  => present,
  }

  file { '/etc/skel/.bashrc':
    ensure => file,
    owner => 'root',
    group => 'root',
    mode => '0644',
    source => 'puppet:///modules/memcached/memcached',
    require => Package['memcached'],
  }
  
  service {
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/sysconfig/memcached'],
  }

}