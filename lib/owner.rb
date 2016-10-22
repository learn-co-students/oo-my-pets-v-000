class Owner
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.count
    all.size
  end

  def self.reset_all
    all.clear
  end

  def species
    @species
  end

  def species=(species)
    raise SpeciesModificationError
  end

  def say_species
    "I am a human."
  end

  def pets
    @pets ||= {fishes: [], dogs: [], cats: []}
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |pet_type, pet_group|
      pet_group.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    fish_count = pets[:fishes].count
    dog_count = pets[:dogs].count
    cat_count = pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
