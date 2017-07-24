
node "enickel8.llnl.gov" {

file { '/home/jessica':
  ensure => directory,
  owner => 'jessica',
  group => 'jessica',
  mode => '755',
}

user { 'jessica':
  ensure => present,
  home => '/home/jessica',
}

file { '/home/mai':
  ensure => directory,
  owner => 'mai',
  group => 'mai',
  mode => '755',
}

user { 'mai':
  ensure => present,
  home => '/home/mai',
}

file { '/home/zhang53':
  ensure => directory,
  owner => 'zhang53',
  group => 'zhang53',
  mode => '755',
}

user { 'zhang53':
  ensure => present,
  home => '/home/zhang53',
}

file { '/home/cephdeploy':
  ensure => directory,
  owner => 'cephdeploy',
  group => 'cephdeploy',
  mode => '755',
}

user { 'cephdeploy':
  ensure => present,
  home => '/home/cephdeploy',
}

} # End node enickel8
