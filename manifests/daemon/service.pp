class transmission::daemon::service inherits transmission::daemon {
  service { 'transmission-daemon':
    ensure => $service_ensure,
    name   => $service_name,
    enable => $service_enable,
  }
}
