class Cat

  @@all = []

  attr_accessor :mood
  attr_reader :name
  
  def initialize(name, mood = "nervous")
    self.name = name
    self.mood = mood
    @@all << self
  end

  private
  def name=(name)
    @name = name
  end

  def self.all
    @@all
  end


end