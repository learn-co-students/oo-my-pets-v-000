class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  # def name=(name)
  #   raise NoMethodError, "Name of cat can't be changed by cat"
  # end
end
