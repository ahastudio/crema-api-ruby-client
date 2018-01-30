module Crema
  class Product
    def initialize(attr)
      @attributes = attr
    end

    %w[
      id name code org_price final_price product_status display reviews_count
      url created_at updated_at
    ].each do |key|
      code = %(
        def #{key}
          @attributes['#{key}']
        end
      )
      class_eval(code, __FILE__, __LINE__)
    end

    def image_url
      @attributes.dig('image', 'middle_url')
    end

    def image_width
      @attributes.dig('image', 'middle_width')
    end

    def image_height
      @attributes.dig('image', 'middle_height')
    end
  end
end
