RSpec.configure do |c|
  c.fail_fast = true
  c.color = true
end

# Added this to turn off "should" deprication warnings.
RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end