# Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}


Dir[File.expand_path(File.join(File.dirname(__FILE__), "../lib", "*.rb"))].each do |file|
        require file
    end
