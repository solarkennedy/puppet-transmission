class transmission::daemon::params {
  $service_enable    = true
  $service_ensure    = 'running'
  $service_manage    = true
  $package_ensure    = 'latest'

  case $::osfamily {
    'Debian': {
      $package_name = [ 'transmission-daemon' ]
    }

}
