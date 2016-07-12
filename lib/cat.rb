class Cat
  # code goes here
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @name.freeze
    @mood = "nervous"
  end

end