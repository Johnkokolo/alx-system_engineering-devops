#!/usr/bin/env bash
# using puppet to connect without password

file { '/etc/ssh/ssh_config':
    ensure => present
}

file_line { 'Turn off passwd aunth':
 path     => '/etc/ssh/ss_config',
 line     => 'PasswordAuthentication no',
 match    => '^#PasswordAuthentication',
}

file_line { 'Declare identity file':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/shool',
  match   => '^#IdentityFile',
}
