class iipsrv::service {

  service { 'iipsrv':
    ensure => 'running',
    enable => 'true',
  }

}

