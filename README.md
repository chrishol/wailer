Wailer
======

Play "Get Up, Stand Up" by Bob Marley and the Wailers on your Sonos system.

Also pings to a Slack channel to announce the standup.

Comes with a cron job so you can schedule it every weekday at a certain time.

Our version runs on a Raspberry Pi. The engineering wailer is very optional...

Requirements:

1. RVM
2. crontab wailer.txt
3. Slack config (slack.yml)
4. chmod +x slack_wailer.sh && chmod +x sonos_wailer.sh [&& chmod +x slack_engineering_wailer.sh]
