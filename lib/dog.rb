class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name #name can't change

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
