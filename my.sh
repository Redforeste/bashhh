#!/bin/bash

# Block MDM domains
            echo "0.0.0.0 deviceenrollment.apple.com" >>/Volumes/Macintosh\ HD/etc/hosts
            echo "0.0.0.0 mdmenrollment.apple.com" >>/Volumes/Macintosh\ HD/etc/hosts
            echo "0.0.0.0 iprofiles.apple.com" >>/Volumes/Macintosh\ HD/etc/hosts
	    echo "0.0.0.0 gdmf.apple.com" >>/Volumes/Macintosh\ HD/etc/hosts
	    echo "0.0.0.0 acmdm.apple.com" >>/Volumes/Macintosh\ HD/etc/hosts
	    echo "0.0.0.0 albert.apple.com" >>/Volumes/Macintosh\ HD/etc/hosts
            echo -e "Successfully blocked MDM & Profile Domains"



# echo "Remove config profile"
  	
 	rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
	rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
	touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
	touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound
echo -e "Successfully Remove config profile rm -rf"

 rm /var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
 rm /var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
 touch /var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
 touch /var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound
echo -e "Successfully Remove config profile rm"

 rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
 rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
 touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
 touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound




launchctl disable system/com.apple.ManagedClient.enroll
profiles show -type enrollment
		