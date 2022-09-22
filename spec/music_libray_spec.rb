require 'music_library.rb'


RSpec.describe MusicLibrary do

    it "adds and list track lists" do
       music_library = MusicLibrary.new
        track_1 = double :track 
        track_2 = double :track
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1,track_2]
    end

    context "searching a keyword in a track list" do
        it "returns a list of tracks that matches the keyword" do
            music_library = MusicLibrary.new
            track_1 = double :track, matches?: true
            track_2 = double :track, matches?: false
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.search("summer")).to eq [track_1]
          end
    end


end