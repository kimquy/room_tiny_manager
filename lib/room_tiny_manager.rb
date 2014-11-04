require "room_tiny_manager/version"
require 'rest_client'
require 'json'

begin 
  require "pry"
rescue LoadError
end

module RoomTinyManager

  class Fetcher

    ## FIXME: I added my access_token
    ## Can be more general, that some one use the gem can set their access token
    ROOMS_END_POINT = "https://api.roomorama.com/v1.0/rooms.json"
    ACCESS_TOKEN = "0WGRIQTVZyf9a6kudI8zmq5QAmMCGzRlhD1jq97T54"

    def initialize
    end

    def self.get_properties
      raw_result = RestClient.get(ROOMS_END_POINT, {access_token: ACCESS_TOKEN})
      JSON.parse(raw_result)
    end

    def self.room_by_city(city=nil)
      raise "Missing argument: city" if city.nil?
      raw_result = RestClient.get(ROOMS_END_POINT, { params: {access_token: ACCESS_TOKEN, destination: city } })
      JSON.parse(raw_result)
    end

  end
end
