require 'rubygems'
require 'slack-notifier'
require 'yaml'

config = YAML.load_file("slack.yml")

notifier = Slack::Notifier.new config["account_name"], config["webhook_token"], channel: "#office", username: "Panda"
notifier.ping "@channel It's time for All Minds!", icon_emoji: ":panda_face:", link_names: 1
