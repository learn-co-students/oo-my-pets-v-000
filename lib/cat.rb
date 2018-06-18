class Cat
  attr_reader :name, :mood
  # code goes here
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(mood)
    @mood = mood
  end
end
