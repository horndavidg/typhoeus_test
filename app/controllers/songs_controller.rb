class SongsController < ApplicationController
 
# class SongsController < ApplicationController
#   def search
#     query = URI.encode(params[:q])

#     res = Typhoeus.get("https://itunes.apple.com/search?media=music&term=#{query}")
#     resJSON = JSON.parse(res.response_body)

#     @songs = []
#     resJSON["results"].each do |song|
#       obj = {}
#       obj[:trackName] = song["trackName"]
#       obj[:url] = song["collectionViewUrl"]

#       @songs.push(obj)
#     end
#   end
# end



  def index
  
  query = URI.encode(params[:q])

song = Typhoeus.get("https://itunes.apple.com/search?term=#{query}")
# movie = Typhoeus.get("https://www.imbd.com", followlocation: true)
result = JSON.parse song.response_body.to_s

@results = result["results"]

# binding.pry


  end
end
