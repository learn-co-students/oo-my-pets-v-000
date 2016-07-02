Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}

RSpec::Expectations.configuration.warn_about_potential_false_positives = false