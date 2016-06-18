require_relative '../config/environment'

RSpec.configure do |config|
  # config here
  RSpec::Expectations.configuration.warn_about_potential_false_positives = false
end