require "minitest_helper"

describe Suitcase::Hotel do
  describe "dateless list" do
    before :each do
      @result = Suitcase::Hotel.find(location: "Boston")
    end

    it "returns an Hotel::Result" do
      @result.must_be_kind_of Suitcase::Hotel::Result
    end

    it "offers the raw response" do
      @result.raw.wont_be_nil
    end
  end

  describe "availability search" do
    before :each do
      @result = Suitcase::Hotel.find(
        arrival: "03/14/2014",
        departure: "03/21/2014",
        location: "Boston",
        rooms: [{ adults: 1 }]
      )
    end

    it "returns a Hotel::Result" do
      @result.must_be_kind_of Suitcase::Hotel::Result
    end
  end
end

