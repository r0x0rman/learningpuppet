class ssh::params {
  case $::osfamily {
    Solaris: {
      $ssh_package_name = 'openssh'
      $ssh_service_config = '/etc/opt/csv/ssh/sshd_config'
      $ssh_service_name = 'sshd'
    }
    Debian: {
      $ssh_package_name = 'openssh-server'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name = 'sshd'
    }
    RedHat: { 
      $ssh_package_name = 'openssh-server'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name = 'sshd'
    }
    default: {
      fail("module propput-ssh does not support osfamily: ${::osfamily}")
    }
  }
}
