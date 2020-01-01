class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCqC741DmNH29RMgmHr/IgttSzhSOj3slyQ4LIqC3GNbHE9klGrAVMw/z3B37LbFgvkoxvi6v7dlegx25J5BQ/dcqoS9Rb6UYVjPCpGG1bKuKqHZDmLe4H69LVclySsfpg2Hgq8QWhBVvMrmkEVSLwaGXvyBc+SHzfHskYyvaf+HDPAz0Q3IEMt3eSUTznTSBxWYEmBp40DRnQnKS+/FhZfMmpa+Ri3Jk5KVHjMy7wgVbKWqCLra4s/UfE255IpRmcbxQEKK6MdcLmez51hbQwHt1gvRzMBN+Lws0PmjWUqGB/zuLFg9H8pdJB+tNnF6d+HB9OwRmxefNdFBPx0m8Vd',
  }
}
