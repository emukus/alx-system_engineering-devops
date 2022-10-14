#Create a file named school in /tmp

file {'school':
  ensure => file,
  path   => '/tmp/school'
  mode   => '0744',
  owner  => 'www-data',
  group  => 'I love Puppet'
}
