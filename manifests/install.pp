class thunderbird::install {
#  package { 'thunderbird':
#    ensure  => present,
#    require => File['/usr/local/bin/thunderbird_postinstall_hook.sh'],
#  }

  exec { 'install_thunderbird':
    command => 'apt-get --no-install-recommends install thunderbird',
    unless  => 'which thunderbird',
  }

  file { '/usr/local/bin/thunderbird_postinstall_hook.sh':
    ensure  => file,
    source  => 'puppet:///modules/thunderbird/thunderbird_postinstall_hook.sh',
    mode    => 755,
  }

  file { '/etc/apt/apt.conf.d/99thunderbird':
    ensure  => file,
    content => "DPkg::Post-Invoke  { '/usr/local/bin/thunderbird_postinstall_hook.sh' }",
  }
}

