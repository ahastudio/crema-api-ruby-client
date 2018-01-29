
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crema/version'

Gem::Specification.new do |spec|
  spec.name          = 'crema-api-ruby-client'
  spec.version       = Crema::VERSION
  spec.summary       = 'Crema API Ruby Client'
  spec.description   = 'Crema API Ruby Client Gem'

  spec.authors       = ['Ashal aka JOKER']
  spec.email         = ['ahastudio@gmail.com']
  spec.homepage      = 'https://github.com/ahastudio/crema-api-ruby-client'

  spec.files         = Dir['lib/**/*.rb']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'faraday', '~> 0.14'
  spec.add_runtime_dependency 'json'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'codecov'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'guard-test'
  spec.add_development_dependency 'rake', '~> 10.0'
end
