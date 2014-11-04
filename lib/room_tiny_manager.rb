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
    HOST_ROOM_END_POINT = "https://api.roomorama.com/v1.0/host/rooms.json"
    ACCESS_TOKEN = "0WGRIQTVZyf9a6kudI8zmq5QAmMCGzRlhD1jq97T54"

    def initialize(properties_input)
      @properties = parse_input(properties_input)
    end

    def get_properties
      @properties
    end

    # Post new room to the following end_point "https://api.roomorama.com/v1.0/host/rooms.json"
    def post_a_room
      raw_result = RestClient.get(HOST_ROOM_END_POINT, { params: @properties.first.merge(access_token: ACCESS_TOKEN) })
      JSON.parse(raw_result)
    end

    # def self.room_by_city(city=nil)
    #   raise "Missing argument: city" if city.nil?
    #   raw_result = RestClient.get(ROOMS_END_POINT, { params: {access_token: ACCESS_TOKEN, destination: city } })
    #   JSON.parse(raw_result)
    # end

    private
      def parse_input(properties)
        properties = JSON.parse(properties)["properties"]

        rooms = []
        properties.each do |property|
          map_p = {
            address: property["property_address"],
            apartment_number: property["apartment_no"],
            postal_code: property["zip_code"],
            city: property["town"],
            country: property["country"],
            description: property["property_description"],
            number_of_bedrooms: property["bedrooms_no"],
            max_guests: property["max_people"],
            internal_id: property["source_id"]
          }
          rooms << map_p
        end
        
        rooms
      end

  end
end
