# == Class: transmission::client
#
# Installs the transmission client
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  include transmission::client
#
#  class { 'transmission::client': interface => 'gtk' }
#
# === Authors
#
# Kyle Anderson <kyle@xkyle.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class transmission::client (
  $package_name = $transmission::client::params::package_name,
  $frontend     = $transmission::client::params::frontend,
) inherits transmission::client::params {

  include '::transmission::client::install'

}
