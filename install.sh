#!/bin/bash
#

# donwload File notify_slack
sudo wget https://git.io/vFBYU -O /etc/init.d/notify_slack
sudo chmod u+x  /etc/init.d/notify_slack

# donwload file slack_url
sudo wget https://git.io/vFBY8 -O /etc/init.d/slack_url

# change this on slack_url file
echo "Enter a slack webhooks : "
read webhook
echo "$webhook" >> /etc/init.d/slack_url

# change this on notify_slack file
echo "Enter a channel name like this #channel"
read varchannel
sed -i "s%<<channel>>%$varchannel%g" /etc/init.d/notify_slack
echo "Enter a user name"
read varusername
sed -i "s%<<Server>>%$varusername%g" /etc/init.d/notify_slack
echo "Enter a emoji name like this :ubuntu:"
read varemoji
sed -i "s%<<:ubuntu:>>%$varemoji%g" /etc/init.d/notify_slack

# start test
sudo /etc/init.d/notify_slack start
read -p "Please, confirm on slack for the start message"

# stop test
sudo /etc/init.d/notify_slack stop
read -p "Please, confirm on slack for the stop message"

# Register the service
 sudo update-rc.d notify_slack default
 read -p "Now you can do a reboot to test"
