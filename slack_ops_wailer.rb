require 'rubygems'
require 'slack-notifier'
require 'yaml'
require 'json'


config = YAML.load_file('slack.yml')

notifier = Slack::Notifier.new config['account_name'], config['webhook_token'], channel: '#ops-team-tastic', username: 'Ops Dragon'
notifier.ping '@channel It’s Ops Team standup time! What are you working on today?', icon_emoji: ':dragon_face:', link_names: 1
