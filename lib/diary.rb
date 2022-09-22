class Diary

    def initialize
        @entries = []
    end

    def add(entry)
        @entries << entry
    end

    def entries
        return @entries
    end

    def count_words
        @entries.map{|entries| entries.count_words}.sum

    end

end