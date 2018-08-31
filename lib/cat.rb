class Cat
  attr_accessor  :owner, :mood
  attr_reader :name
  @@all =[]
  
  def initialize(name, mood = "nervous")
    @name = name 
    @mood = mood
    @@all << self
  end 
end

