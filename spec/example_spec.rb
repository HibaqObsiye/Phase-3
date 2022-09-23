RSpec.describe do
    it "example 1" do
      fake = double :fake, greet: "hello world!"
      expect(fake.greet("key")).to eq "hello world!" 
    end



end