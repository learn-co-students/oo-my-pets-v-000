class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name
  @@all = []
  def initialize(dog_name)
    @name = dog_name
    @mood = "nervous"
    @@all << self
  end

   def self.all
    @@all
  end

end