

class MusicLibrary
    def initialize
      @track_list = []
    end
  
    def add(track) 
        @track_list << track
    end
  
    def all
      @track_list
    end
    
    def search(keyword) 
        @track_list.map do |track|
         track if track.matches?(keyword)
        end.compact
    end
  end