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
  
  describe "error handling" do
    before :each do
      begin
        Suitcase::Hotel.find(location: "Some invalid location")
      rescue Suitcase::Hotel::EANException => e
        @exception = e
      end
    end

    it "should raise an exception" do
      assert_raises(Suitcase::Hotel::EANException) do
        Suitcase::Hotel.find(location: "No such place exists")
      end
    end
    
    it "should set the raw API results on the Exception" do
      @exception.raw.wont_be_nil
    end
  end
end

