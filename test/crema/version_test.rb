require 'test_helper'

module Crema
  class VersionTest < Test::Unit::TestCase
    test 'version number' do
      assert_equal '0.1.1', ::Crema::VERSION
    end
  end
end
