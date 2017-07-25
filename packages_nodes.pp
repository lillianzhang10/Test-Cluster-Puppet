# Checks if certain packages are present on the nodes
# Also if certain services are running

node "enickel2.llnl.gov", "enickel3.llnl.gov", "enickel4.llnl.gov", "enickel5.llnl.gov", "enickel6.llnl.gov", "enickel7.llnl.gov", "enickel8.llnl.gov" "enickel9.llnl.gov", "enickel10.llnl.gov", "enickel11.llnl.gov", {

# Cluster Build Guide - Setup NTP

package { 'ntp':
  name => 'ntp',
  ensure => present,
}

package { 'ntpdate':
  name => 'ntpdate',
  ensure => present,
}

service { 'ntpd':
  name => 'ntpd',
  ensure => running,
  enable => true,
  provider => 'systemd',
}

# Cluster Build Guide - Install Additional Packages

package { 'iptables-services':
  name => 'iptables-services',
  ensure => present,
}

service { 'firewalld':
  name => 'firewalld',
  ensure => stopped,
  enable => false,
  provider => 'systemd',
}

service { 'iptables':
  name => 'iptables.service',
  ensure => running,
  enable => true,
  provider => 'systemd',
}

package { 'pdsh':
  name => 'pdsh',
  ensure => present,
}

package { 'libibverbs-utils':
  name => 'libibverbs-utils',
  ensure => present,
}

package { 'infiniband-diags':
  ensure => present,
}

package { 'ibutils':
  ensure => present,
}

package { 'perftest':
  ensure => present,
}

package { 'libmlx4':
  ensure => present,
}

package { 'libibverbs':
  ensure => present,
}

package { 'opensm':
  ensure => present,
}

package { 'net-tools':
  ensure => present,
}

package { 'openmpi':
  ensure => present,
}

package { 'openmpi-devel':
  ensure => present,
}

service { 'opensm':
  name => 'opensm',
  ensure => running,
  enable => true,
  provider => 'systemd',
}




} # End nodes 2-11
