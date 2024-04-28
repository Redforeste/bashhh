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
  	
        sudo rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
	sudo rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
	sudo touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
	sudo touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound
echo -e "Successfully Remove config profile rm -rf"

sudo rm /var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
sudo rm /var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
sudo touch /var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
sudo touch /var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound
echo -e "Successfully Remove config profile rm"

sudo rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
sudo rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
sudo touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
sudo touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound




sudo launchctl disable system/com.apple.ManagedClient.enroll
sudo profiles show -type enrollment
		break
		;;
done
