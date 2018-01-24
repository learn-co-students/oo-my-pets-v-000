Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}

class SettingWriterError<StandardError
end
