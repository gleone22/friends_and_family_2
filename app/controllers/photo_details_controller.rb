class PhotoDetailsController < ApplicationController
  # def index
  #
  #
  #   require 'httparty'
  #   require 'pp'
  #   require 'nokogiri'
  #   require 'awesome_print'
  #
  #   image_id = params[:id]
  #   # image_id = 26017081884
  #   base_url = "https://api.flickr.com/services/rest/"
  #
  #   params = "?method=flickr.photos.getInfo&api_key=0da305fa43a4c6834cfefe751fb703ea&photo_id=#{image_id}&format=json&nojsoncallback=1"
  #
  #   full_url = base_url + params
  #
  #   response = HTTParty.get(full_url).parsed_response
  #   # pp response  # pretty print will give you an visual of the Hash layout. uncomment this to see.
  #
  #   @photo_detail = []
  #
  #   @photo_detail << response[['photo']['id']]
  #   @photo_detail << response [['photo']['owner']['username']]
  #   @photo_detail << response [['photo']['owner']['realname']]
  #   @photo_detail << response[['photo']['owner']['location']]
  #   @photo_detail << response[['photo']['owner']['path_alias']]
  #   @photo_detail << response[['photo']['title']['_content']]
  #   # @photo_detail << response['photo']['location']['neighbourhood']['_content']
  #   # @photo_detail << response['photo']['location']['locality']['_content']
  #   # @photo_detail << response['photo']['location']['county']['_content']
  #   @photo_detail << response[['photo']['location']['region']['_content']]
  #   @photo_detail << response [['photo']['location']['country']['_content']]
  #
  # end
end
