class iipsrv (
  $verbosity           = $iipsrv::params::verbosity,
  $logfile             = $iipsrv::params::logfile,
  $max_cache_size      = $iipsrv::params::max_image_cache_size,
  $quality             = $iipsrv::params::jpeg_quality,
  $max_cvt             = $iipsrv::params::max_cvt,
  $fcgid_idle_timeout  = $iipsrv::params::fcgid_idle_timeout,
  $fcgid_max_processes = $iipsrv::params::fcgid_max_processes_per_class,
  $script_alias        = $iipsrv::params::script_alias,
) inherits iipsrv::params {

  include iipsrv::package
  include iipsrv::config
  include iipsrv::service

  Class['iipsrv::package'] ->
  Class['iipsrv::config'] ->
  Class['iipsrv::service']

}

