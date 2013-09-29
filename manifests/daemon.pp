# == Class: transmission::daemon
#
# Configures the transmission daemon
#
# === Parameters
#
#
# === Variables
#
# === Examples
#
#  class { transmission::daemon:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Kyle Anderson <kyle@xkyle.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class transmission::daemon ( ) inerhits transmission::daemon::params {

  # Make puppet order the classes properly and restart the services when configs change
  Class['::transmission::daemon::install'] -> Class['::transmission::daemon::config'] ~> Class['::transmission::daemon::service']
}
