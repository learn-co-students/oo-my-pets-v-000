class Dog
  attr_writer :mood
  @@all = []
  
  def initialize(name, mood = "nervous")
    @name = name.freeze 
    @mood = mood
    @@all << self
  end
  
  def mood 
    @mood
  end
  
  def name
    @name 
  end
end