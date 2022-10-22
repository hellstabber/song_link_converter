require 'uri'
require 'net/http'
require 'json'

print 'Song link(Spotify, Apple Music, Youtube, Youtube Music etc.): '

platform_link = gets

uri = URI('https://api.song.link/v1-alpha.1/links?url=' + platform_link)
res = Net::HTTP.get_response(uri)

data = JSON.parse(res.body)

song_link = data['pageUrl']

puts 'Song.link URL: ' + song_link