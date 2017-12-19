class Cat
  # code goes here
  attr_reader :name
  attr_accessor :mood #can change mood

  def initialize(name)
    @name = name
    @mood = "nervous" #initialize with nervous mood 
  end

end
