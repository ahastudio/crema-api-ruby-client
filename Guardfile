guard :rubocop do
  watch(/.+\.rb$/)
  watch(%r{(?:.+/)?\.rubocop(?:_todo)?\.yml$}) { |m| File.dirname(m[0]) }
end

guard :test, cmd: 'bundle exec rake test' do
  watch(%r{^lib/(.*/)?([^/]+)\.rb$}) { |m| "test/#{m[1]}#{m[2]}_test.rb" }
  watch(%r{^test/(.*)\/?(.*)_test\.rb$})
  watch(%r{^test/test_helper\.rb$}) { 'test' }
end
