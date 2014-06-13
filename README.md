Install Open Stack using FUEL 5.0 
=================================

Prerequisites
-------------

1. A recent version of VirtualBox should be installed on the host system
2. Virtualization CPU flags present on the host system
3. At least 4G of memory and 4 CPU cores


Deploy
------
1. Download OpenStack-5.0.iso and vbox-scripts-5.0.zip from Mirantis website (you will need to create a free account).
2. Install puppet if not present on the host system
3. Copy/move both downloaded files to /etc/puppet/modules/fuel/files/
3. git clone this repo to /etc/puppet/ and run it


The overall install time depends on several factors, on a mediocre Bare Metal box with nice Internet connectivity it  took just under an hour.
