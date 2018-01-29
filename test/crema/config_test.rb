require 'test_helper'

module Crema
  class ConfigTest < Test::Unit::TestCase
    test 'configure' do
      Crema.configure do |config|
        config.app_id = 'MY_APP_ID'
      end

      assert_equal 'MY_APP_ID', Crema.config.app_id
    end
  end
end
