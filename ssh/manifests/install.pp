class ssh::install {
  $package_name = $::osfamily ?
    'RedHat'  => "openssh-server",
    'Debian'  => "openssh-server",
    'Solaris' => "openssh",
  },

  package { 'ssh':
    ensure => present,
    name   => $package_name,
  }
}
