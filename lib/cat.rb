class Cat
  # code goes here
  attr_reader :name #can only read the attribute
  attr_accessor :mood #reads and sets the attribute

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end
