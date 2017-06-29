class Dog
  attr_accessor :mood, :owner

  # code goes here

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  def name
    @name.dup.freeze
  end

end
