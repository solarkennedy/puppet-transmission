# puppet-transmission #

![Transmission Logo ](https://upload.wikimedia.org/wikipedia/commons/2/22/Transmission_logo.jpg)

[Transmission ](http://www.transmissionbt.com/) is a fast, easy and free BitTorrent Client. It has different interfaces. This puppet module supports the daemon and configuration, with an additional RPC based web interfaces. But it allows the installation of all different interfaces(gtk+,QT,cli)

[![Build Status](https://travis-ci.org/solarkennedy/puppet-transmission.png)](https://travis-ci.org/solarkennedy/puppet-transmission)

## Installation ##

Getting it locally:

    git clone git@github.com:Akendo/puppet-transmission.git

For a puppetmaster with a `module ` structurer:

    git clone git@github.com:Akendo/puppet-transmission.git module/transmission


Note for Transmission-daemon:
Currently transmission overwrites the settings.json configuration file
on exit. The daemon can be instructed to reload the config with a SIGHUP,
or
    # invoke-rc.d transmission-daemon reload

Otherwise changes made manually to the file while the daemon is running
will be silently overwritten on exit.

## Usage ##

This will create a basic `transmission-daemon` with enable RPC interfaces.
User is `torrent` and password is empty. It will allow everyone host 
from the 10.1.1.0 network.

      class {'transmission::daemon':
        rpc_enabled       => true,
        bind_address_ipv4 => $::ipaddress_eth0,
        rpc_bind_address  => $::ipaddress_eth0,
        rpc_username      => "torrent",
        rpc_whitelist     => "10.1.1.*",
        rpc_password      => "{a6d7691be9099dedbd410c8566113e386d6623a69huYVwhh"
      }



## ToDo ##

 Update Travis tests with new configuration options.
 More Documentation
 Cross Platform testing, Ubuntu(13.10) is tested only so far
 Apply right reload /start /stop feature to allow correct


License
-------
Apache 2.0

Contact
-------
Akendo < 4k3nd0@gmail.com >

Kyle Anderson <kyle@xkyle.com>

Support
-------
Please log tickets and issues on [GitHub](https://github.com/solarkennedy/puppet-transmission/issues/)
