
node "tci.llnl.gov" {

package { 'nfs-utils':
  ensure => present,
}

package { 'nfs-utils-lib':
  ensure => present,
}

service { 'nfs':
  ensure => running,
  enable => true,  
}

# Note: The edit to /etc/exports is in the puppyconfi manifest

} # End node nickeli
