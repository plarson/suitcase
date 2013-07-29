module Suitcase
  class Configuration
    class << self
      attr_accessor :ean_hotel_api_key, :ean_hotel_cid, :minor_rev, :locale,
                  :currency_code
    end
  end

  def self.configure(&block)
    yield Configuration
  end
end

