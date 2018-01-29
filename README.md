# Crema API Ruby Client

[![Build Status](https://travis-ci.org/ahastudio/crema-api-ruby-client.svg?branch=master)](https://travis-ci.org/ahastudio/crema-api-ruby-client)
[![Test Coverage](https://api.codeclimate.com/v1/badges/8619e40dc830edcb215a/test_coverage)](https://codeclimate.com/github/ahastudio/crema-api-ruby-client/test_coverage)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'crema-api-ruby-client'
```

And then execute:

    $ bundle

Add your credentials to `config/initializers/crema.rb`:

```ruby
require 'crema'

Crema.configure do |config|
  config.app_id = ENV['CREMA_APP_ID']
  config.secret = ENV['CREMA_SECRET']
end

Crema.config.access_token = Crema::OAuth.token
```

## Usage

```ruby
client = Crema::Client.new
brand_id = 9
products = client.fetch_products(brand_id, limit: 3)
products.each do |product|
  puts product.id
  puts product.image_url
  puts product.name
  puts product.final_price
end
```

## Contributing

Bug reports and pull requests are welcome
on GitHub at https://github.com/ahastudio/crema-api-ruby-client.
