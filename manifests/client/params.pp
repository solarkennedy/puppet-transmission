class transmission::client::params {

  $package_ensure = 'latest'
 
  # Default desired package is whatever the distro wants
  $frontend = 'distro' 
  case $::osfamily {
    'Debian','RedHat': {
      case $frontend {
        'gtk'   : $package_name = [ 'transmission-gtk' ]
        'qt'    : $package_name = [ 'transmission-qt' ]
        'cli'   : $package_name = [ 'transmission-cli' ]
        'distro': $package_name = [ 'transmission' ]
        default : fail("You asked me to install a transmission frontend I am unaware of: $frontend")
      }
    }

}
