class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{species}."
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

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |animal_type, animal_array|
      animal_array.each do |instance|
        instance.mood = "nervous"
      end
      animal_array.clear
    end
  end

  def list_pets
    dog_count = @pets[:dogs].count
    fish_count = @pets[:fishes].count
    cat_count = @pets[:cats].count
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
