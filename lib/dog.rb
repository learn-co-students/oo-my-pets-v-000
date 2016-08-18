class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name, mood="nervous")
      @name = name
      @mood = mood
  end
end
