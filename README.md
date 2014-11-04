puppet-iipsrv
=============

Puppet module for managing the IIPSRV image server

Example
=======

  class {'iipsrv':
    verbosity      => 5,
    max_cache_size => 1024,
    quality        => 50,
  }

