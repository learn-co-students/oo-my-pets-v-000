class Dog
  # code goes here
  attr_accessor :mood 

  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

end