class Dog
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name)
    @name = name
    self.mood = "nervous"
  end

end
