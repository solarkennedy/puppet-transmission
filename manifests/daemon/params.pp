  class transmission::daemon::params {
    $service_enable     = true
    $service_ensure     = 'running'
    $service_manage     = true
    $package_ensure     = 'latest'

    $transmission_user  = 'debian-transmission'
    $transmission_group = 'debian-transmission'

    $alt_speed_down                 = 50
    $alt_speed_enabled              = false
    $alt_speed_time_begin           = 540
    $alt_speed_time_day             = 127
    $alt_speed_time_enabled         = false
    $alt_speed_time_end             = 1020
    $alt_speed_up                   = 50
    $bind_address_ipv4              = "0.0.0.0"
    $bind_address_ipv6              = "::"
    $blocklist_enabled              = false
    $blocklist_url                  = "http://www.example.com/blocklist"
    $cache_size_mb                  =  4
    $dht_enabled                    =  true
    $download_dir                   =  "/var/lib/transmission-daemon/downloads"
    $download_limit                 =  100
    $download_limit_enabled         =  0
    $download_queue_enabled         =  true
    $download_queue_size            =  5
    $encryption                     =  0
    $idle_seeding_limit             =  30
    $idle_seeding_limit_enabled     =  false
    $incomplete_dir                 =  "/home/debian-transmission/Downloads"
    $incomplete_dir_enabled         =  false
    $lpd_enabled                    =  false
    $max_peers_global               =  200
    $message_level                  =  2
    $peer_congestion_algorithm      =  ""
    $peer_id_ttl_hours              =  6
    $peer_limit_global              =  200
    $peer_limit_per_torrent         =  50
    $peer_port                      =  60996
    $peer_port_random_high          =  65535
    $peer_port_random_low           =  49152
    $peer_port_random_on_start      =  false
    $peer_socket_tos                =  "default"
    $pex_enabled                    =  true
    $port_forwarding_enabled        =  true
    $preallocation                  =  1
    $prefetch_enabled               =  1
    $queue_stalled_enabled          =  true
    $queue_stalled_minutes          =  30
    $ratio_limit                    =  2
    $ratio_limit_enabled            =  false
    $rename_partial_files           =  true
    $rpc_authentication_required    =  true
    $rpc_bind_address               =  "127.0.0.1"
    $rpc_enabled                    =  true
    $rpc_password                   =  ""
    $rpc_port                       =  9091
    $rpc_url                        =  "/transmission/"
    $rpc_username                   =  ""
    $rpc_whitelist                  =  ""
    $rpc_whitelist_enabled          =  true
    $scrape_paused_torrents_enabled =  true
    $script_torrent_done_enabled    =  false
    $script_torrent_done_filename   =  ""
    $seed_queue_enabled             =  false
    $seed_queue_size                =  10
    $speed_limit_down               =  100
    $speed_limit_down_enabled       =  false
    $speed_limit_up                 =  100
    $speed_limit_up_enabled         =  false
    $start_added_torrents           =  true
    $trash_original_torrent_files   =  false
    $umask                          =  18
    $upload_limit                   =  100
    $upload_limit_enabled           =  0
    $upload_slots_per_torrent       =  14
    $utp_enabled                    =  false

  case $::osfamily {
    'Debian','Ubuntu': {
    $package_name = [ 'transmission-daemon' ]
    }
    default: { fail("You asked me to install the transmission-daemon on an OS I don't know about: $::osfamily") }
  }

}
