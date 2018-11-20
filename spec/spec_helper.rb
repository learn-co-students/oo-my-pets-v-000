require_relative '../config/environment'

RSpec.configure do |config|
  # config here
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end
end
