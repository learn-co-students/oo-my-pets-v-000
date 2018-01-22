class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def initialize(species)
    @species = species
    @@all << self
    @pets = {dogs: [], cats: [], fishes: []}
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |category , pet_array|
      pet_array.each do |pet_obj|
        pet_obj.mood = "nervous"
      end
    end
    @pets = {dogs: [], cats: [], fishes: []}
  end

  def list_pets
    fish_count = @pets[:fishes].length
    dog_count = @pets[:dogs].length
    cat_count = @pets[:cats].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end


  def say_species
    "I am a human."
  end
end
