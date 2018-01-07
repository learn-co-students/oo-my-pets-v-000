class Dog
  # code goes here
  attr_accessor :name, :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end
