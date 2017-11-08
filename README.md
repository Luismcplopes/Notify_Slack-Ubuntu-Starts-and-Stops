# Notify Slack when Ubuntu 14 Starts and Stops
This script notifies slack when this machine starts up or shuts down



# To installer

## Needs 
### slack incoming-webhooks
    * How to set up the webhook integration in Slack 
     - https://api.slack.com/incoming-webhooks
    * Create Slack incoming-webhooks
      - https://slack.com/apps/A0F7XDUAZ-incoming-webhooks
   
   
 ```
 sudo wget https://git.io/vFBYe -O /etc/init.d/install.sh && sudo bash install.sh
```



## Register the service

Run the following to register the service so it runs on startup and shutdown.


Test Slack messages:

- https://api.slack.com/docs/messages/builder
- http://davestevens.github.io/slack-message-builder

## notify_slack

Useful information

It may look better but I want some more useful information to be posted when a machine boots or shuts down.
Things like IP address and Disk space left.

Create this script
```
$ sudo vi /etc/init.d/notify_slack
```
Create this file slack_url and replace it with you actual webhook URL
```
$ sudo vi /etc/init.d/slack_url
```
Make it executable
```
$ sudo chmod u+x  /etc/init.d/notify_slack
```
Run a quick test (without rebooting)
```
$ sudo /etc/init.d/notify_slack start
$ sudo /etc/init.d/notify_slack stop
```


Here is what I came up with (You may need to tweak this a bit)
I get the IP address/Name/Memory size on a startup and Also a quick view on how much disk space I have left.
This script as is probably won't work on your systems you will need to tweak it a bit since it is doing a few greps and awks of the information.


## notify_slack2

Create this simple script
```
$ sudo vi /etc/init.d/notify_slack2
```
Make it executable
```
$ sudo chmod u+x  /etc/init.d/notify_slack2
```
Run a quick test (without rebooting)
```
$ sudo /etc/init.d/notify_slack2 start
$ sudo /etc/init.d/notify_slack2 stop
```

Note:  I uploaded a custom emoji named :ubunto: that is why I get this view when it runs.




## notify_slack3 (Simple Script)


Create this simple script
```
$ sudo vi /etc/init.d/notify_slack3
```
Make it executable
```
$ sudo chmod u+x  /etc/init.d/notify_slack3
```
Now test it.
```
$ sudo /etc/init.d/notify_slack3 start
$ sudo /etc/init.d/notify_slack3 stop
```




How to set up the webhook integration in Slack 
- https://api.slack.com/incoming-webhooks

Create Slack incoming-webhooks
- https://slack.com/apps/A0F7XDUAZ-incoming-webhooks

Test Slack messages:

- https://api.slack.com/docs/messages/builder
- http://davestevens.github.io/slack-message-builder





Happy Slacking!

References:
- http://www.whiteboardcoder.com/





