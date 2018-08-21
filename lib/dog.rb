#dog.rb

class Dog
  attr_reader :name
  attr_accessor :mood

  def initialize(name)  #initialize dog w/ a 'nervous' mood
    @name = name      #initialize w a name that cannot be changed
    @mood = "nervous"
  end
end
