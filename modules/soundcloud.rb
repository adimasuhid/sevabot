# Dependencies:
# Register an application on http://developers.soundcloud.com/ and replace YOUR_CLIENT_ID with your Soundcloud client ID
# Install Soundcloud rubygem http://rubygems.org/gems/soundcloud
require 'rubygems'
require 'soundcloud'

# register a client with YOUR_CLIENT_ID as client_id_
client = Soundcloud.new(:client_id => 'b9d4a11b8d64471b33fd8bb71d445d27') # Robbie's client id
# get 10 hottest tracks
tracks = client.get(ARGV[0], :limit => ARGV[1], :order => 'hotness')
# print each link
tracks.each do |track|
  puts track.permalink_url
end
