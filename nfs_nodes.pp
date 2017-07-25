
node "enickel2.llnl.gov", "enickel3.llnl.gov", "enickel4.llnl.gov", "enickel5.llnl.gov", "enickel6.llnl.gov", "enickel7.llnl.gov", "enickel8.llnl.gov" "enickel9.llnl.gov", "enickel10.llnl.gov", "enickel11.llnl.gov", {

# Note: The edit to /etc/fstab is in the puppyconf[2-11] manifests

mount { '/home':
  ensure => mounted,
  device => 'nickel1:/home',
  fstype => 'nfs',
}

# Note: Make sure that id_rsa.pub is copied to authorized_keys later

selboolean { 'use_nfs_home_dirs':
  persistent => true,
  value => on,
}

} # End nodes enickel[2-11]
