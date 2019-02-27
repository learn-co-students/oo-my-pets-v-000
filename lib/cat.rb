class Cat
  attr_accessor :mood
  attr_reader :name
  ### name cannot be changed

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end
