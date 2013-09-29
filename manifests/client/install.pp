class transmission::client::install inherits transmission::client {

  # I don't know how to get this logic in params, as it has to know the desired frontend
  case $::osfamily {
    'Debian','RedHat': {
      case $frontend {
        'gtk'   : { $package_name = [ 'transmission-gtk' ] }
        'qt'    : { $package_name = [ 'transmission-qt' ]  }
        'cli'   : { $package_name = [ 'transmission-cli' ] }
        'distro': { $package_name = [ 'transmission' ]     }
        default : { fail("You asked me to install a transmission frontend I am unaware of: $frontend") }
      }
    }
  }

  package { 'transmission-client':
    ensure => $package_ensure,
    name   => $package_name,
  }

}
