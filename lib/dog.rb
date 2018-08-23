class Dog
  attr_accessor :mood
  attr_reader :name, :owner

  #instantiates with a given name and mood defaulted to nervous
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  #allows for #mood= to change the objects mood when called
  def mood=(mood)
    @mood = mood
  end
end
