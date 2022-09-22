

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
        @track_list.select{|track| track.matches?(keyword)}
    end
  end