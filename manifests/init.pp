class thunderbird (
  $thunderbird_cfg_uri
) {

  Class['thunderbird::install'] -> Class['thunderbird::config']

  class { 'thunderbird::install': }
  class { 'thunderbird::config':
    thunderbird_cfg_uri => $thunderbird_cfg_uri
  }
}

