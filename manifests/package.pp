class iipsrv::package {

  package { 'iipsrv':
    ensure => 'present',
  }

  package {'iipsrv-httpd-fcgi':
    ensure => 'present',
  }



}


