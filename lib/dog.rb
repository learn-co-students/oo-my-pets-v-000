class Dog
  attr_reader :name, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(mood)
    @mood = mood
  end

  def mood
    @mood
  end

end
