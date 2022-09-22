class DiaryEntry
    def initialize(title,contents)
        @title = title
        @contents = contents
    end

    def title
        @title
    end

    def contents
        @contents
    end

    def count_words
        return @contents.split(" ").length
    end




end