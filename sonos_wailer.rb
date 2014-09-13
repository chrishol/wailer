require 'rubygems'
require 'sonos'

def queue_bob(speaker)
  speaker.add_to_queue "x-sonos-spotify:spotify%3atrack%3a1Bh3GMDtYN2FB4jWp7VlrZ?sid=12&amp;flags=32"
end

system = Sonos::System.new
upstairs_speaker = system.speakers.select{ |speaker| speaker.name == "Upstairs" }.first

# Bob Marley and the Wailers - Get Up, Stand Up - Spotify
if upstairs_speaker.is_playing?
  queue_bob(upstairs_speaker)
  upstairs_speaker.next
else
  upstairs_speaker.clear_queue
  queue_bob(upstairs_speaker)
  upstairs_speaker.play
end

# Set reasonable volume
upstairs_speaker.volume = 50


