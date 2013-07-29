require "minitest_helper"

describe Suitcase::Hotel::Session do
  describe "creation" do
    before :each do
      @session = Suitcase::Hotel::Session.new
    end

    it "should leave the session ID blank until set" do
      @session.id.must_equal nil
    end

    it "should allow setting of the IP address, session ID and user agent" do
      @session.ip = "1.1.1.1"
      @session.id = "AAAA-AAAA-AAAA-AAAA-AAAA"
      @session.user_agent = "ua"
      @session.ip.must_equal "1.1.1.1"
      @session.id.must_equal "AAAA-AAAA-AAAA-AAAA-AAAA"
      @session.user_agent.must_equal "ua"
    end

    it "should allow setting of IP address and session ID on create" do
      session = Suitcase::Hotel::Session.new("id", "ip", "user agent")
      session.id.must_equal "id"
      session.ip.must_equal "ip"
      session.user_agent.must_equal "user agent"
    end

    it "on_create should be run during initialization" do
      Suitcase::Hotel::Session.on_create { @set = "set" }
    end
  end
end

