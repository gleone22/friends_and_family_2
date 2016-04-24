
class PhotosController < ApplicationController
require 'httparty'

  def index
    lat = "42.313479"
    long = "-71.1273687"
    base_url = "https://api.flickr.com/services/rest/"

    params = "?method=flickr.photos.search&api_key=0da305fa43a4c6834cfefe751fb703ea&lat=#{lat}&lon=#{long}&format=json&nojsoncallback=1"

    full_url = base_url + params

    response = HTTParty.get(full_url).parsed_response
    # pp response  # pretty print will give you an visual of the Hash layout. uncomment this to see.

    @photo_set = []

    response['photos']['photo'].each do |i|  # this took me a minute to figure out..
  #  puts "Each ID=> #{i["id"]} --Each owner=> #{i["owner"]} --Each secret=> #{i["secret"]}-- each server=>#{i["server"]}-- farm=> #{i["farm"]}"
     img_link = "https://farm#{i["farm"]}.staticflickr.com/#{i["server"]}/#{i["id"]}_#{i["secret"]}.jpg"

     @photo_set << img_link
   end
  end
end
