class Cat
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
  
  def name
    @name
  end
  
  def mood=(mood)
    @mood = mood
  end
  
  def mood
    @mood
  end
end