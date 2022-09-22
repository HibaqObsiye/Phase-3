require 'track.rb'

RSpec.describe Track do

    it "constructs" do
        track = Track.new("donna","summer")
        expect(track.title).to eq "donna"
        expect(track.artist).to eq "summer"

    end




end