class Dog

  attr_reader :name
  attr_accessor :mood

  def initialize(name="Daisy", mood="nervous")
    @name = name
    @mood = mood
  end

  def buy_dog(name)
    newDog = Dog.new(name)
    Owner.pets[dogs] = newDog
  end

end