# studious-octo-potato
Script for person checking presence.

I made this simple script for my friend to check if current person came in and left place.
It uses Telegram API to send notification to Telegram BOT.

## New bot for notification

search for [@botfather](https://t.me/botfather) and write
```
/newbot
```
to get HTTP API key (at first set name and privacy and profile picture ...)


search for [@jsondumpbot](https://t.me/jsondumpbot) to get chat-id 
```
...
    "chat": {
      "id": 2??????5,
      "first_name": "???",
      "username": "???",
      "type": "private"
    },
...
```

## How to use

```bash
# Clone this repository
$ git clone https://github.com/vitasrutek/studious-octo-potato

# Go into the repository
$ cd studious-octo-potato

# Run with 3 parameters
$ ./presence-check.sh 192.168.0.2 me.log vitasrutek
```
* first parameter is IP address of wanted device
 
* second parameter is file which is flag that defends sending notification for all the time when device is or is not reachable.

* third parameter is name of person shown in Telegram notification

To fulltime check is crontab record made
```
crontab -e
* * * * * studious-octo-potato/presence-check.sh 192.168.0.2 me.log vitasrutek
```
