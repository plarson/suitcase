require "minitest_helper"

describe Suitcase::Hotel do
  describe "list" do
    it "returns an Array of Hotels" do
      Suitcase::Hotel.find(location: "Boston")
    end
  end
end

