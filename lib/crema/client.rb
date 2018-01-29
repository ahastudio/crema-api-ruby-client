module Crema
  class Client < Base
    def fetch_products(brand_id, page: 1, limit: 30, status: 'selling')
      response = connection.get(
        '/v1/products',
        access_token: Crema.config.access_token,
        brand_id: brand_id,
        page: page,
        limit: limit,
        status: status
      )
      return nil unless response.success?
      JSON.parse(response.body).map { |i| Product.new(i) }
    end
  end
end
