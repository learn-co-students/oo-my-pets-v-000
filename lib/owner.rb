
class Owner
  attr_accessor :owner, :name, :pets
  attr_reader :species

  @@all = []

  #@pets = {:fishes => [], :dogs => [], :cats => []}

  def initialize(owner)
    @owner = owner
  #  @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def species
    @species = "human"
  end

  def say_species
   "I am a #{species}."
  end

  def buy_fish(fish)

    pets[:fishes].push(Fish.new(fish))
    pets
  end

  def buy_cat(cat)
    pets[:cats].push(Cat.new(cat))
  end

  def buy_dog(dog)
    pets[:dogs].push(Dog.new(dog))
  end

  def walk_dogs
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
    #binding.pry
  end

  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, pets_array|
      pets_array.each{|pet| pet.mood = "nervous"}
      pets_array.clear
    end
  end

  def list_pets
    num_fish = nil
    num_dog = nil
    num_cat = nil
    num_fish = pets[:fishes].length
    num_dog = pets[:dogs].length
    num_cat = pets[:cats].length
    "I have #{num_fish} fish, #{num_dog} dog(s), and #{num_cat} cat(s)."
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

 def self.count
   @@all.count
 end

 def self.reset_all
   @@all.clear
 end
end
