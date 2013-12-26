# == Class: transmission::daemon
#
# Configures the transmission daemon
#
# === Parameters
#
#
# === Variables
#
# === Examples
#
#  class { transmission::daemon:
#  }
#
# === Authors
#
# Kyle Anderson <kyle@xkyle.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class transmission::daemon (
  $service_enable    = $transmission::daemon::params::service_enable,
  $service_ensure    = $transmission::daemon::params::service_ensure,
  $service_manage    = $transmission::daemon::params::service_manage,
  $package_ensure    = $transmission::daemon::params::package_ensure,

  $alt_speed_down                 = $transmission::daemon::params::alt_speed_down,
  $alt_speed_enabled              = $transmission::daemon::params::alt_speed_enabled,
  $alt_speed_time_begin           = $transmission::daemon::params::alt_speed_time_begin,
  $alt_speed_time_day             = $transmission::daemon::params::alt_speed_time_day,
  $alt_speed_time_enabled         = $transmission::daemon::params::alt_speed_time_enabled,
  $alt_speed_time_end             = $transmission::daemon::params::alt_speed_time_end,
  $alt_speed_up                   = $transmission::daemon::params::alt_speed_up,
  $bind_address_ipv4              = $transmission::daemon::params::bind_address_ipv4,
  $bind_address_ipv6              = $transmission::daemon::params::bind_address_ipv6,
  $blocklist_enabled              = $transmission::daemon::params::blocklist_enabled,
  $blocklist_url                  = $transmission::daemon::params::blocklist_url,
  $cache_size_mb                  = $transmission::daemon::params::cache_size_mb,
  $dht_enabled                    = $transmission::daemon::params::dht_enabled,
  $download_dir                   = $transmission::daemon::params::download_dir,
  $download_limit                 = $transmission::daemon::params::download_limit,
  $download_limit_enabled         = $transmission::daemon::params::download_limit_enabled,
  $download_queue_enabled         = $transmission::daemon::params::download_queue_enabled,
  $download_queue_size            = $transmission::daemon::params::download_queue_size,
  $encryption                     = $transmission::daemon::params::encryption,
  $idle_seeding_limit             = $transmission::daemon::params::idle_seeding_limit,
  $idle_seeding_limit_enabled     = $transmission::daemon::params::idle_seeding_limit_enabled,
  $incomplete_dir                 = $transmission::daemon::params::incomplete_dir,
  $incomplete_dir_enabled         = $transmission::daemon::params::incomplete_dir_enabled,
  $lpd_enabled                    = $transmission::daemon::params::lpd_enabled,
  $max_peers_global               = $transmission::daemon::params::max_peers_global,
  $message_level                  = $transmission::daemon::params::message_level,
  $peer_congestion_algorithm      = $transmission::daemon::params::peer_congestion_algorithm,
  $peer_id_ttl_hours              = $transmission::daemon::params::peer_id_ttl_hours,
  $peer_limit_global              = $transmission::daemon::params::peer_limit_global,
  $peer_limit_per_torrent         = $transmission::daemon::params::peer_limit_per_torrent,
  $peer_port                      = $transmission::daemon::params::peer_port,
  $peer_port_random_high          = $transmission::daemon::params::peer_port_random_high,
  $peer_port_random_low           = $transmission::daemon::params::peer_port_random_low,
  $peer_port_random_on_start      = $transmission::daemon::params::peer_port_random_on_start,
  $peer_socket_tos                = $transmission::daemon::params::peer_socket_tos,
  $pex_enabled                    = $transmission::daemon::params::pex_enabled,
  $port_forwarding_enabled        = $transmission::daemon::params::port_forwarding_enabled,
  $preallocation                  = $transmission::daemon::params::preallocation,
  $prefetch_enabled               = $transmission::daemon::params::prefetch_enabled,
  $queue_stalled_enabled          = $transmission::daemon::params::queue_stalled_enabled,
  $queue_stalled_minutes          = $transmission::daemon::params::queue_stalled_minutes,
  $ratio_limit                    = $transmission::daemon::params::ratio_limit,
  $ratio_limit_enabled            = $transmission::daemon::params::ratio_limit_enabled,
  $rename_partial_files           = $transmission::daemon::params::rename_partial_files,
  $rpc_authentication_required    = $transmission::daemon::params::rpc_authentication_required,
  $rpc_bind_address               = $transmission::daemon::params::rpc_bind_address,
  $rpc_enabled                    = $transmission::daemon::params::rpc_enabled,
  $rpc_password                   = $transmission::daemon::params::rpc_password,
  $rpc_port                       = $transmission::daemon::params::rpc_port,
  $rpc_url                        = $transmission::daemon::params::rpc_url,
  $rpc_username                   = $transmission::daemon::params::rpc_username,
  $rpc_whitelist                  = $transmission::daemon::params::rpc_whitelist,
  $rpc_whitelist_enabled          = $transmission::daemon::params::rpc_whitelist_enabled,
  $scrape_paused_torrents_enabled = $transmission::daemon::params::scrape_paused_torrents_enabled,
  $script_torrent_done_enabled    = $transmission::daemon::params::script_torrent_done_enabled,
  $script_torrent_done_filename   = $transmission::daemon::params::script_torrent_done_filename,
  $seed_queue_enabled             = $transmission::daemon::params::seed_queue_enabled,
  $seed_queue_size                = $transmission::daemon::params::seed_queue_size,
  $speed_limit_down               = $transmission::daemon::params::speed_limit_down,
  $speed_limit_down_enabled       = $transmission::daemon::params::speed_limit_down_enabled,
  $speed_limit_up                 = $transmission::daemon::params::speed_limit_up,
  $speed_limit_up_enabled         = $transmission::daemon::params::speed_limit_up_enabled,
  $start_added_torrents           = $transmission::daemon::params::start_added_torrents,
  $trash_original_torrent_files   = $transmission::daemon::params::trash_original_torrent_files,
  $umask                          = $transmission::daemon::params::umask,
  $upload_limit                   = $transmission::daemon::params::upload_limit,
  $upload_limit_enabled           = $transmission::daemon::params::upload_limit_enabled,
  $upload_slots_per_torrent       = $transmission::daemon::params::upload_slots_per_torrent,
  $utp_enabled                    = $transmission::daemon::params::utp_enabled,
  $transmission_user              = $transmission::daemon::params::transmission_user,
  $transmission_group             = $transmission::daemon::params::transmission_group,

) inherits transmission::daemon::params {

  class {'::transmission::daemon::install':}
  class {'::transmission::daemon::config':
    alt_speed_down                 => $alt_speed_down,
    alt_speed_enabled              => $alt_speed_enabled,
    alt_speed_time_begin           => $alt_speed_time_begin,
    alt_speed_time_day             => $alt_speed_time_day,
    alt_speed_time_enabled         => $alt_speed_time_enabled,
    alt_speed_time_end             => $alt_speed_time_end,
    alt_speed_up                   => $alt_speed_up,
    bind_address_ipv4              => $bind_address_ipv4,
    bind_address_ipv6              => $bind_address_ipv6,
    blocklist_enabled              => $blocklist_enabled,
    blocklist_url                  => $blocklist_url,
    cache_size_mb                  => $cache_size_mb,
    dht_enabled                    => $dht_enabled,
    download_dir                   => $download_dir,
    download_limit                 => $download_limit,
    download_limit_enabled         => $download_limit_enabled,
    download_queue_enabled         => $download_queue_enabled,
    download_queue_size            => $download_queue_size,
    encryption                     => $encryption,
    idle_seeding_limit             => $idle_seeding_limit,
    idle_seeding_limit_enabled     => $idle_seeding_limit_enabled,
    incomplete_dir                 => $incomplete_dir,
    incomplete_dir_enabled         => $incomplete_dir_enabled,
    lpd_enabled                    => $lpd_enabled,
    max_peers_global               => $max_peers_global,
    message_level                  => $message_level,
    peer_congestion_algorithm      => $peer_congestion_algorithm,
    peer_id_ttl_hours              => $peer_id_ttl_hours,
    peer_limit_global              => $peer_limit_global,
    peer_limit_per_torrent         => $peer_limit_per_torrent,
    peer_port                      => $peer_port,
    peer_port_random_high          => $peer_port_random_high,
    peer_port_random_low           => $peer_port_random_low,
    peer_port_random_on_start      => $peer_port_random_on_start,
    peer_socket_tos                => $peer_socket_tos,
    pex_enabled                    => $pex_enabled,
    port_forwarding_enabled        => $port_forwarding_enabled,
    preallocation                  => $preallocation,
    prefetch_enabled               => $prefetch_enabled,
    queue_stalled_enabled          => $queue_stalled_enabled,
    queue_stalled_minutes          => $queue_stalled_minutes,
    ratio_limit                    => $ratio_limit,
    ratio_limit_enabled            => $ratio_limit_enabled,
    rename_partial_files           => $rename_partial_files,
    rpc_authentication_required    => $rpc_authentication_required,
    rpc_bind_address               => $rpc_bind_address,
    rpc_enabled                    => $rpc_enabled,
    rpc_password                   => $rpc_password,
    rpc_port                       => $rpc_port,
    rpc_url                        => $rpc_url,
    rpc_username                   => $rpc_username,
    rpc_whitelist                  => $rpc_whitelist,
    rpc_whitelist_enabled          => $rpc_whitelist_enabled,
    scrape_paused_torrents_enabled => $scrape_paused_torrents_enabled,
    script_torrent_done_enabled    => $script_torrent_done_enabled,
    script_torrent_done_filename   => $script_torrent_done_filename,
    seed_queue_enabled             => $seed_queue_enabled,
    seed_queue_size                => $seed_queue_size,
    speed_limit_down               => $speed_limit_down,
    speed_limit_down_enabled       => $speed_limit_down_enabled,
    speed_limit_up                 => $speed_limit_up,
    speed_limit_up_enabled         => $speed_limit_up_enabled,
    start_added_torrents           => $start_added_torrents,
    trash_original_torrent_files   => $trash_original_torrent_files,
    umask                          => $umask,
    upload_limit                   => $upload_limit,
    upload_limit_enabled           => $upload_limit_enabled,
    upload_slots_per_torrent       => $upload_slots_per_torrent,
    utp_enabled                    => $utp_enabled,
    transmission_user              => $transmission_user,
    transmission_group             => $transmission_group,
    }
  class {'::transmission::daemon::service':}

  # Make puppet order the classes properly
  # and restart the services when configs change
  Class['::transmission::daemon::install']
  -> Class['::transmission::daemon::config']
  ~> Class['::transmission::daemon::service']
}
