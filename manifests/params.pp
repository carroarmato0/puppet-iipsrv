class iipsrv::params {

  # The log file the module will (attempt) to write to.
  # If no value is given, no log will be written. Make sure the server process has write access to this directory.
  # Paths with spaces in them may not work correctly.
  $logfile                       = $::operatingsystem ? {
    'centos' => '/var/log/httpd/iipsrv.log',
    'debian' => '/var/log/apache2/iipsrv.log',
  }
  # The log file the module will (attempt) to write to. If no value is given, no log will be written.
  # Make sure the server process has write access to this directory. Paths with spaces in them may not work correctly.
  $verbosity                     = 1
  # Max image cache size to be held in RAM in MB.
  # This is a cache of the compressed JPEG image tiles requested by the client. The default is 10MB.
  $max_image_cache_size          = 10
  # The default JPEG quality factor for compression when the client does not specify one.
  # The value should be between 1 (highest level of compression) and 100 (highest image quality). The default is 75.
  $jpeg_quality                  = 75
  # Limits the maximum image dimensions in pixels (the WID or HEI commands) allowable for dynamic JPEG export via the CVT command.
  # This prevents huge requests from overloading the server. The default is 5000.
  $max_cvt                       = 5000
  # The maximum number of quality layers to decode for images that support progressive quality encoding, such as JPEG2000.
  # Ignored for other file formats. If not set, half of the available quality layers will be decoded by default.
  # If set to -1, all the available layers will be decoded by default.
  $max_layers                    = ''
  # This is a prefix automatically added by the server to the beginning of each file system path.
  # This can be useful for security reasons to limit access to certain sub-directories.
  # For example, with a prefix of “/home/images/” set on the server, a request by a client for “image.tif” will
  # point to the path “/home/images/image.tif”.  Any reverse directory path component such as ../ is also filtered out. No default value.
  $filesystem_prefix             = '/'

  $fcgid_idle_timeout            = -1
  $fcgid_max_processes_per_class = 1
  $fcgi                          = '/usr/libexec/iipsrv/iipsrv.fcgi'
  $script_alias                  = '/iipsrv'
  $conf                          = $::operatingsystem ? {
    'centos' => '/etc/httpd/conf.d/iipsrv.conf',
    'debian' => '/etc/apache2/conf.d/iipsrv.conf',
  }
  $webdaemon = $::operatingsystem ? {
    'centos' => 'httpd',
    'debian' => 'apache2',
  }


}