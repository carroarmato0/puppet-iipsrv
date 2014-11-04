class iipsrv::config {

  file { $::iipsrv::params::conf:
    ensure  => file,
    content => template('iipsrv/iipsrv.conf.erb'),
    notify  => Service[$::iipsrv::params::webdaemon],
  }

}

