class Owner
  attr_reader :species
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = 'human'
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end
end
