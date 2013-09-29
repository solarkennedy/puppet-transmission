class transmission::client::install inherits transmission::client {

  package { 'transmission-client':
    ensure => $package_ensure
    name   => $package_name
  }

}
