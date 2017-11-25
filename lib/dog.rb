class Dog
  #Our dog class cannot change its name
  attr_reader :name
  #when we initialize a new do we give it a name and a mood of nervous
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  #this instance method allows us to change the mood of our dog
  def mood=(mood)
    @mood = mood
  end

  def mood
    @mood
  end
end
