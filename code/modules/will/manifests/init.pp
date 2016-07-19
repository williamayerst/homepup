class will {

user { 'will':
  ensure           => 'present',
  comment          => 'will,,,',
  gid              => '1000',
  groups           => ['adm', 'cdrom', 'sudo', 'dip', 'plugdev', 'lpadmin', 'sambashare'],
  home             => '/home/will',
  managehome  => true,
  shell            => '/bin/bash',
  password         => '$6$IwDmaBm0$.2xJSUxWfwl95D4kiKcLidPmhoHFQuVPCHEvrH/GfCSErQ3mOuO3fo7a6xkgLwkRazbgzUDFHopzpvyxazWnt1',
  uid              => '1000'
}

}
