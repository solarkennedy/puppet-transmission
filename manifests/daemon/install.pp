class transmission::daemon::install inherits transmission::daemon {
  package { 'transmission-daemon':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
