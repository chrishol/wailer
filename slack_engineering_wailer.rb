require 'rubygems'
require 'slack-notifier'
require 'yaml'
require 'net/http'
require 'json'
require 'faker'

def random_name
  [Faker::Name.prefix,Faker::Name.first_name,Faker::Name.last_name,Faker::Name.suffix].join(" ")
end

def random_gif
  url = "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=cinemagraphs"
  resp = Net::HTTP.get_response(URI.parse(url))
  buffer = resp.body
  result = JSON.parse(buffer)
  puts result
  return result["data"]["image_url"]
end

def random_emoji
  File.open('emoji.txt') do |f|
    return f.each_line.to_a.sample.strip
  end
end

config = YAML.load_file("slack.yml")

notifier = Slack::Notifier.new(
  config["account_name"],
  config["webhook_token"],
  channel: "#tech_team",
  username: random_name
)
notifier.ping "@channel Reminder: Please write your standup updates by 10:30am!\r\n#{random_gif}",
              icon_emoji: ":#{random_emoji}:",
              link_names: 1
