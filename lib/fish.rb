class Fish
  attr_accessor :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(mood)
    @mood = mood
  end

   def name=(name)
    raise "Exception"
  end
end