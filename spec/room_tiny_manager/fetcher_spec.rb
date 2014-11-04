require 'spec_helper'

module RoomTinyManager
  describe Fetcher do
    describe "#get_properties" do
      it "returns list of properties" do 

      end
    end

    describe "#room_by_city" do
      let(:room) { RoomTinyManager::Fetcher.room_by_city("singapore")["result"].first } 

      it "room must be in Singapore" do
        expect(room["city"]).to eq("Singapore")
      end 

      it "room must not from New York" do
        expect(room["city"]).not_to eq("New York")
      end
    end
  end
end