require "minitest_helper"

describe Suitcase do
  it "should be configurable" do
    Suitcase.configure do |config|
     config.ean_hotel_api_key = "something"
    end
    Suitcase::Configuration.ean_hotel_api_key.must_equal "something"
  end
end
