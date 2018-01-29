require 'faraday'
require 'json'

module Crema
  class Base
    def self.connection
      @connection ||= Faraday.new(url: HOST) do |faraday|
        faraday.request :url_encoded
        faraday.adapter Faraday.default_adapter
      end
    end

    protected

    def connection
      Crema::Base.connection
    end
  end
end
