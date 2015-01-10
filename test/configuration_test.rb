require "minitest_helper"

describe Suitcase do
  it "should be configurable" do
    Suitcase.configuration[:experience] = "PARTNER_WEBSITE" # apiExperience field
    Suitcase.configuration[:cid] = "55505" # cid given by API
    Suitcase.configuration[:minor_rev] = "28" # allow changing of the minor rev
    Suitcase.configuration[:locale] = "en_US" # change locale
    Suitcase.configuration[:currency_code] = "USD" # currency, not required
    Suitcase.configuration[:sig] = "signature value" # if desired
  end
end
