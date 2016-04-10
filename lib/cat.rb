class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

  def buy_cat(name)
    newCat = Cat.new(name)
    Owner.pets[cats] = newCat
  end

end