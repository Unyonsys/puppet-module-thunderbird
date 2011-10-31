class thunderbird::config (
  $thunderbird_cfg_uri
) {
  file { '/etc/thunderbird/thunderbird.cfg':
    ensure => file,
    content => template('thunderbird/thunderbird.cfg.erb'),
  }


  file { '/etc/thunderbird/pref/thunderbird.js':
    ensure  => file,
    content => template('thunderbird/thunderbird.js.erb'),
  }
}

