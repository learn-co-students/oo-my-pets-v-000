class Owner
  attr_accessor :name, :pets
  attr_reader :species
   @@all = []
   def initialize(species)
     @species = species
     @pets = {fishes: [], cats: [], dogs: []}
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
    "I am a #{@species}."
  end
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def play_with_cats
    @pets[:cats].each{|c| c.mood = "happy"}
  end
  def walk_dogs
    @pets[:dogs].each{|d| d.mood = "happy"}
  end
  def feed_fish
    @pets[:fishes].each{|f| f.mood = "happy"}
  end
  def sell_pets
    @pets.each do |species, animal_names|
      animal_names.each do |name|
        name.mood = "nervous"
      end
      animal_names.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
