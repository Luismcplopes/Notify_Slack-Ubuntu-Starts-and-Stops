#!/bin/bash
#
#
# This script notifies slack
# when this machine starts up
# or shuts down
#


# donwload File notify_slack
sudo wget https://git.io/vFBYU -O /etc/init.d/notify_slack
sudo chmod u+x  /etc/init.d/notify_slack
# donwload file slack_url
 sudo wget https://git.io/vFBY8 -O /etc/init.d/slack_url

# change this on notify_slack file
echo "Enter a slack webhooks : "
read webhook
# "channel":"#channel",
echo "Enter a slack webhooks : "
read webhook
# "username" : "Server",


echo "Enter a slack webhooks : "
read webhook
echo "$webhook" >> /etc/init.d/slack_url


# test
sudo /etc/init.d/notify_slack start
read -p "Press enter to continue"
# test
sudo /etc/init.d/notify_slack stop
read -p "Press enter to continue"
## Register the service
 sudo update-rc.d notify_slack default
 read -p "Press enter to continue"