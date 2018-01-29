require 'test_helper'

module Crema
  class OAuthTest < Test::Unit::TestCase
    setup do
      require 'dotenv/load'
      Crema.configure do |config|
        config.app_id = ENV['CREMA_APP_ID']
        config.secret = ENV['CREMA_SECRET']
      end
    end

    test 'OAuth get token' do
      access_token = Crema::OAuth.token
      assert_equal String, access_token.class
      assert_equal 64, access_token.size
    end
  end
end
