class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood
  # code goes here
  def initialize(name="Daisy", mood="nervous")
    @name = name
    @mood = mood
  end

end
