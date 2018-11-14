#!/bin/bash
rm -rf /etc/pki/rpm-gpg/* &&
rm -rf /etc/yum.repos.d/* &&
cd /root/changeyum/rpm-gpg &&
cp -f * /etc/pki/rpm-gpg/ &&
cd /root/changeyum/yum.repos.d &&
cp -f * /etc/yum.repos.d/ &&
yum clean all &&
yum makecache &&
echo '全部完成！'
