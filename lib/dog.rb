class Dog
  attr_accessor :mood 
  attr_reader :name, :species


  def initialize(name, mood = "nervous")
    @name = name 
    @mood = mood
  end# of initialize

  
end