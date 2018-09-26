class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
 
  
  def initialize(species)
    @name = name
    @species = species
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end
  
  def say_species
    "I am a #{@species}."
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
    @pets.map do |species, individuals|
      if species == :dogs
      individuals.each do |dog|
        dog.mood = "happy"
        end
     end
   end
  end
   
  def play_with_cats
    @pets.map do |species, individuals|
      if species == :cats
      individuals.each do |cat|
        cat.mood = "happy"
        end
     end
    end
  end
   
  def feed_fish
    @pets.map do |species, individuals|
      if species == :fishes
      individuals.each do |fish|
        fish.mood = "happy"
        end
      end
    end
  end
   
  def sell_pets
    @pets.map do |species, individuals|
      individuals.each do |pet|
       pet.mood = "nervous"
     end
     individuals.clear
    end
  end   
   
   def list_pets
    fish_total = @pets[:fishes].count
    dog_total = @pets[:dogs].count
    cat_total = @pets[:cats].count
    "I have #{fish_total} fish, #{dog_total} dog(s), and #{cat_total} cat(s)."
   end
   
  def self.all
    @@all 
  end
  
  def self.count
    Owner.all.count
  end
  
  def self.reset_all
    @@all.clear
  end
end