class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def say_species
    puts "I am a #{@species}"
  end

  def self.all
    @@all.dup.freeze
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def walk_dogs

  end

  def play_with_cats

  end

  def feed_fish

  end

end
