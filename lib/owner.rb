class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@count = 0
  @@all = []
#//Class Methods////
  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []} #//pet hash created on initialization
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end
#////Instance Methods///
  def say_species
    "I am a human." #// or "...#{species}" if the value for species can be other than 'human'
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, individuals_array|
      @pets[species].each do |individual|
        individual.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
      fish_count = @pets[:fishes].count
      dogs_count = @pets[:dogs].count
      cats_count = @pets[:cats].count
      "I have #{fish_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end

end
