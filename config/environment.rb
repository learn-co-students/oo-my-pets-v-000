Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}

class NameModificationError < StandardError; end
class SpeciesModificationError < StandardError; end
