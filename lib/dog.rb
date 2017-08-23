class Dog
  attr_accessor :mood
  attr_reader :name, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def owner=(owner)
    @owner = owner
    owner.buy_dog(self) unless owner.pets[:dogs].include?(self)
  end
end
