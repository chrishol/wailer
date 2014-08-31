require 'rubygems'
require 'slack-notifier'

notifier = Slack::Notifier.new ENV['SLACK_ACCOUNT_NAME'], ENV['SLACK_INCOMING_WEBHOOK_TOKEN'], channel: "#office", username: "Startup Panda"
notifier.ping "@channel IT'S STANDUP TIME!", icon_emoji: ":panda_face:"
