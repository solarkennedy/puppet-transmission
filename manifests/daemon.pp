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
class transmission::daemon (
  $service_enable    = $transmission::daemon::params::service_enable,
  $service_ensure    = $transmission::daemon::params::service_ensure,
  $service_manage    = $transmission::daemon::params::service_manage,
  $package_ensure    = $transmission::daemon::params::package_ensure,

  $download_dir      = $transmission::daemon::params::download_dir,
  $incomplete_dir    = $transmission::daemon::params::incomplete_dir,
  $rpc_url           = $transmission::daemon::params::rpc_url,
  $rpc_port          = $transmission::daemon::params::rpc_port,
  $rpc_user          = $transmission::daemon::params::rpc_user,
  $rpc_password      = $transmission::daemon::params::rpc_password,
  $rpc_whitelist     = $transmission::daemon::params::rpc_whitelist,
  $blocklist_url     = $transmission::daemon::params::blocklist_url,

) inherits transmission::daemon::params {

  include '::transmission::daemon::install'
  include '::transmission::daemon::config'
  include '::transmission::daemon::service'

  # Make puppet order the classes properly and restart the services when configs change
  Class['::transmission::daemon::install'] -> Class['::transmission::daemon::config'] ~> Class['::transmission::daemon::service']
}
