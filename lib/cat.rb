require 'pry'
class Cat
  attr_reader :name, :mood
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(type)
    @mood = type
  end

end