require 'test_helper'

module Crema
  class ClientTest < Test::Unit::TestCase
    setup do
      require 'dotenv/load'
      Crema.configure do |config|
        config.app_id = ENV['CREMA_APP_ID']
        config.secret = ENV['CREMA_SECRET']
      end
      Crema.config.access_token = Crema::OAuth.token

      @client = Crema::Client.new
      @brand_id = 9
    end

    test 'fetch products' do
      products = @client.fetch_products(@brand_id, limit: 4)
      assert_equal Array, products.class
      assert_equal 4, products.size

      product = products.first
      assert_equal Crema::Product, product.class
      assert_equal String, product.name.class
      assert_equal String, product.image_url.class
      assert_equal Integer, product.image_width.class
      assert_equal Integer, product.image_height.class

      next_product = @client.fetch_products(
        @brand_id, page: 2, limit: 4
      ).first
      assert_not_equal product.id, next_product.id
    end
  end
end
