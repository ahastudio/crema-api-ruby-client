module Crema
  class Config
    attr_accessor :app_id, :secret, :access_token, :logger

    def initialize
      reset
    end

    def reset
      self.app_id = ENV['CREMA_APP_ID']
      self.secret = ENV['CREMA_SECRET']
      self.access_token = ENV['CREMA_ACCESS_TOKEN']
      self.logger = nil
    end
  end

  class << self
    def configure
      block_given? ? yield(config) : config
    end

    def config
      @config ||= Config.new
    end
  end
end
