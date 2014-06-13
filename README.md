Install Open Stack using FUEL 5.0 
=================================


1. Download OpenStack-5.0.iso and vbox-scripts-5.0.zip from Mirantis website (you will need to create a free account).
2. Install puppet if not present on the host system
3. Copy/move both downloaded files to /etc/puppet/modules/fuel/files/
3. git clone this repo to /etc/puppet/ and run it


The overall install time depends on several factors, on a mediocre Bare Metal box with nice Internet connectivity it  took just under an hour.
