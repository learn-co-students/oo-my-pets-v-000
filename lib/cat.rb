class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end

#cat = Cat.new("Puss")
#cat.name = "Tom"
#cat.mood = "sleepy"
#puts cat.name
#puts cat.mood
