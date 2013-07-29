module Suitcase
  class Hotel
    class Session
      class << self
        attr_reader :on_create

        def on_create(&block)
          @on_create = block
        end
      end

      attr_accessor :id, :ip, :user_agent

      def initialize(id = nil, ip = nil, user_agent = nil)
        @id, @ip, @user_agent = id, ip, user_agent
        Session.on_create.call if Session.on_create
      end
    end
  end
end

