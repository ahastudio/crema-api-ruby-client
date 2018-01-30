module Crema
  class Client < Base
    def fetch_products(brand_id: nil, page: 1, limit: 30, status: 'selling')
      response = connection.get(
        '/v1/products',
        brand_id: brand_id,
        page: page,
        limit: limit,
        status: status,
        access_token: Crema.config.access_token
      )
      return nil unless response.success?
      JSON.parse(response.body).map { |i| Product.new(i) }
    end

    def fetch_product(product_id, brand_id: nil)
      response = connection.get(
        "/v1/products/#{product_id}",
        brand_id: brand_id,
        access_token: Crema.config.access_token
      )
      return nil unless response.success?
      Product.new(JSON.parse(response.body))
    end
  end
end
