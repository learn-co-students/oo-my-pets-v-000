class Cat
  # code goes here
  attr_accessor :mood
  attr_reader :name
  @@all = []

  def initialize(cat_name)
    @name = cat_name
    @mood = "nervous"
    @@all << self
  end

   def self.all
    @@all
  end
end