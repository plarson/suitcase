require "minitest_helper"

describe Suitcase::Session do
  describe "creation" do
    before :each do
      @session = Suitcase::Session.new
    end

    it "should leave the EAN session ID blank until set" do
      @session.ean_id.must_equal nil
    end

    it "should allow setting of the IP address, EAN session ID and user agent" do
      @session.ip = "1.1.1.1"
      @session.ean_id = "AAAA-AAAA-AAAA-AAAA-AAAA"
      @session.user_agent = "ua"
      @session.ip.must_equal "1.1.1.1"
      @session.ean_id.must_equal "AAAA-AAAA-AAAA-AAAA-AAAA"
      @session.user_agent.must_equal "ua"
    end

    it "should allow setting of IP address and session ID on create" do
      session = Suitcase::Session.new(ean_id: "id", ip: "ip", user_agent: "ua")
      session.ean_id.must_equal "id"
      session.ip.must_equal "ip"
      session.user_agent.must_equal "ua"
    end
  end
end

