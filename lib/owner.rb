class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species

  @@all = []

  def all
    @@all.dup.freeze
  end

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def walk_dogs

  end

  def play_with_cats

  end

  def feed_fish

  end

end
