class iipsrv {

  include iipsrv::package
  include iipsrv::config
  include iipsrv::service

  Class['iipsrv::package'] ->
  Class['iipsrv::config'] ->
  Class['iipsrv::service']

}

