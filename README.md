# RoomTinyManager

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'room_tiny_manager'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install room_tiny_manager

## Usage

* To create a new fetcher
  input = "{\"properties\":[{\"property_adress\":\"72 Central Park W\",\"apartment_no\":\"7\",\"zip_code\":\"8002\",\"town\":\"Zurich\",\"country\":\"Swiss\",\"property_description\":\"fake description of the property\",\"bedrooms_no\":\"1\",\"max_people\":\"2\",\"source_id\":\"68123\"}]}"

  fetcher = RoomTinyManager::Fetcher.new(input)

 * To get properties
  fetcher.get_properties
  
 * To post a room
  fetcher.post_a_room 


## Contributing

1. Fork it ( https://github.com/[my-github-username]/room_tiny_manager/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
