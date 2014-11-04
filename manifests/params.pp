class iipsrv::params {

  $verbosity                     = 5
  $max_image_cache_size          = 10
  $jpeg_quality                  = 50
  $max_cvt                       = 3000
  $fcgid_idle_timeout            = -1
  $fcgid_max_processes_per_class = 1
  $fcgi                          = '/usr/libexec/iipsrv/iipsrv.fcgi'
  $script_alias                  = '/iipsrv'
  $logfile                       = $::operatingsystem ? {
    'centos' => '/var/log/httpd/iipsrv.log',
    'debian' => '/var/log/apache2/iipsrv.log',
  }
  $conf                          = $::operatingsystem ? {
    'centos' => '/etc/httpd/conf.d/iipsrv.conf',
    'debian' => '/etc/apache2/conf.d/iipsrv.conf',
  }
  $webdaemon = $::operatingsystem ? {
    'centos' => 'httpd',
    'debian' => 'apache2',
  }

}