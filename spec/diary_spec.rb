require "./lib/diary.rb"
require './lib/diary_entry.rb'
RSpec.describe Diary do
    it "adds and lists diary entries" do
        diary = Diary.new
        fake_diary_entry = double :diary_entry  #creates a fake diary entry object
        fake_diary_entry_2 = double :diary_entry
        diary.add(fake_diary_entry)
        diary.add(fake_diary_entry_2)
        expect(diary.entries).to eq [fake_diary_entry,fake_diary_entry_2]
    end

    it "counts words in the entries given" do
        diary = Diary.new
        fake_diary_entry = double :diary_entry, count_words: 2  #creates a fake diary entry object and the method your calling to test
        fake_diary_entry_2 = double :diary_entry, count_words: 3
        diary.add(fake_diary_entry)
        diary.add(fake_diary_entry_2)
        expect(diary.count_words).to eq 5
    end

end



