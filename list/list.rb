youbike = "https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json"

require 'open-uri'
require 'json'

sites = JSON.parse(URI.open(youbike).read)
sites.each do |site|
  puts site["sna"].gsub("YouBike2.0_", "")
end



