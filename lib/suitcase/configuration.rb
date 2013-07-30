module Suitcase
  class Configuration
    class << self
      attr_accessor :ean_hotel_api_key, :ean_hotel_cid, :locale,
                    :ean_hotel_minor_rev, :currency_code
    end
  end

  def self.configure(&block)
    yield Configuration
  end
end

