class Cat
  # code goes here
  attr_reader :name, :species
  attr_accessor :mood

  def initialize(name)
    @mood = "nervous"
    @name = name
  end

end
