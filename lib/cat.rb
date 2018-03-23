class Cat
  attr_accessor :gender, :mood
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self
  end

end
