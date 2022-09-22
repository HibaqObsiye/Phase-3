require './lib/music_library.rb'
require './lib/track.rb'


RSpec.describe "integration" do

    context "Given track entries" do 
        it "returns a list of track of tracks" do
            music_library = MusicLibrary.new
            track_1 = Track.new("Donna","lovely day")
            track_2 = Track.new("Stevie","sunshine")
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.all).to eq [track_1,track_2]
        end
    end

    context "Given a list of tracks" do
        it "returns a list of tracks that matches the keyword" do
            music_library = MusicLibrary.new
            track_1 = Track.new("Donna","lovely day")
            track_2 = Track.new("Stevie","sunshine")
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.search("lovely")).to eq [track_1]
        end

        it "returns a list of tracks that matches the keyword" do
            music_library = MusicLibrary.new
            track_1 = Track.new("Donna","lovely day")
            track_2 = Track.new("Stevie","sunshine")
            track_3 = Track.new("donna","lovely")
            music_library.add(track_1)
            music_library.add(track_2)
            music_library.add(track_3)
            expect(music_library.search("lovely")).to eq [track_1,track_3]
        end

    end 




end