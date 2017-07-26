
node "etc2.llnl.gov", "etc3.llnl.gov", "etc4.llnl.gov", {

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
