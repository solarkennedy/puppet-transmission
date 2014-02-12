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
#  class { transmission::daemon: }
#
# === Authors
#
# Kyle Anderson <kyle@xkyle.com>
# Jan Alexander Slabiak < 4k3nd0@gmail.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class transmission::daemon {

  class {'::transmission::daemon::install':}
  class {'::transmission::daemon::service':}

  # Make puppet order the classes properly
  # and restart the services when configs change
  Class['::transmission::daemon::install']
  ~> Class['::transmission::daemon::service']
}
