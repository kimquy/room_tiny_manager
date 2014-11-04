require 'spec_helper'

module RoomTinyManager
  describe Fetcher do

    let(:sigle_input) { "{\"properties\":[{\"property_address\":\"72 Central Park W\",\"apartment_no\":\"7\",\"zip_code\":\"8002\",\"town\":\"Zurich\",\"country\":\"Swiss\",\"property_description\":\"fake description of the property\",\"bedrooms_no\":\"1\",\"max_people\":\"2\",\"source_id\":\"68123\"}]}" }

    let(:multiple_inputs) {
      "{\"properties\":[{\"property_address\":\"72 Central Park W\",\"apartment_no\":\"7\",\"zip_code\":\"8002\",\"town\":\"Zurich\",\"country\":\"Swiss\",\"property_description\":\"fake description of the property\",\"bedrooms_no\":\"1\",\"max_people\":\"2\",\"source_id\":\"68123\"},
      {\"property_address\":\"72 Central Park W\",\"apartment_no\":\"4\",\"zip_code\":\"8002\",\"town\":\"Saigon\",\"country\":\"Vietnam\",\"property_description\":\"fake description of the property\",\"bedrooms_no\":\"1\",\"max_people\":\"2\",\"source_id\":\"12345\"}
      ]}"
    }

    describe "#get_properties" do

      let(:fetcher1) { RoomTinyManager::Fetcher.new(sigle_input) }
      let(:fetcher2) { RoomTinyManager::Fetcher.new(multiple_inputs) }

      it "returns 1 property" do 
        expect(fetcher1.get_properties.count).to eq(1)
      end

      it "returns list of properties" do 
        expect(fetcher2.get_properties.count).to be > 1
      end


    end

    # describe "#room_by_city" do
    #   let(:room) { RoomTinyManager::Fetcher.room_by_city("singapore")["result"].first } 

    #   it "room must be in Singapore" do
    #     expect(room["city"]).to eq("Singapore")
    #   end 

    #   it "room must not from New York" do
    #     expect(room["city"]).not_to eq("New York")
    #   end
    # end


    # describe "#post_a_room" do
    #   pending 'Fill some test here'
    # end

  end
end