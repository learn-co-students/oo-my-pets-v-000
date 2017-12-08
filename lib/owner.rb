class Owner

  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []

  def initialize(name)
    @name = name
    @species = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
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
    @pets.each do |pet_type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
    end
      pet_array.clear
    end
  end

  def list_pets
   fish_count =  @pets[:fishes].count
   dog_count = @pets[:dogs].count
   cat_count = @pets[:cats].count
   "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end