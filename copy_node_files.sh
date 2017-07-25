#Copies files from each node into puppet repo
for i in {2..11}; do

mkdir /root/Nickel-Puppet/node$i/
scp e$i:/etc/hostname ./node$i/
scp e$i:/etc/fstab ./node$i/
scp e$i:/etc/exports ./node$i/
scp e$i:/etc/sysconfig/network-scripts/ifcfg-* ./node$i/
scp e$i:/etc/resolv.conf ./node$i/

done
