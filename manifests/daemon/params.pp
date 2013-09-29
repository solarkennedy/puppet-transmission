class transmission::daemon::params {
  $service_enable    = true
  $service_ensure    = 'running'
  $service_manage    = true
  $package_ensure    = 'latest'

  $download_dir = "/var/lib/transmission-daemon/downloads"
  $incomplete_dir = undef
  $rpc_url = undef
  $rpc_port = 9091
  $rpc_user = "transmission"
  $rpc_password = undef
  $rpc_whitelist = undef
  $blocklist_url = undef

  case $::osfamily {
    'Debian','RedHat': {
      $package_name = [ 'transmission-daemon' ]
    }
    default: { fail("You asked me to install the transmission-daemon on an OS I don't know about: $::osfamily") }
  }

}
