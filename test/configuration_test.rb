require "minitest_helper"

describe Suitcase do
  it "should be configurable" do
    Suitcase::Configuration.ean_hotel_api_key.wont_be_nil
  end
end
